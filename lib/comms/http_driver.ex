defmodule Onfido.Comms.HttpDriver do
  def request(:delete, path) do
    path
    |> api_url()
    |> HTTPoison.delete(headers(), options())
    |> decode_json()
  end

  def request(:get, path, params \\ %{}) do
    url_params = params |> URI.encode_query()

    "#{path}?#{url_params}"
    |> api_url()
    |> HTTPoison.get(headers(), options())
    |> decode_json()
  end

  def request(:post, path, params) do
    path
    |> api_url()
    |> HTTPoison.post(Poison.encode!(params), headers(), options())
    |> decode_json()
  end

  def request(:put, path, params) do
    path
    |> api_url()
    |> HTTPoison.put(Poison.encode!(params), headers(), options())
    |> decode_json()
  end

  defp api_url(url) do
    api_base() <> url
  end

  defp headers do
    [
      Authorization: "Token token=#{api_token()}"
    ]
  end

  defp options do
    [ssl: [{:versions, [:"tlsv1.2"]}]]
  end

  defp decode_json({:ok, resp_map}) do
    case resp_map.body do
      "" -> {:ok, "No Body"}
      body -> Poison.decode(body)
    end
    |> create_response(resp_map)
  end

  defp decode_json({:error, error}) do
    case error do
      "" -> {:error, "Something went wrong"}
      e -> Poison.decode(e)
    end
  end

  defp create_response({:ok, body}, resp_map) do
    case resp_map.status_code do
      x when x in [200, 201, 204] ->
        {:ok, body}

      _ ->
        {:error, body}
    end
  end

  defp create_response({:error, _}, _), do: {:error, "There was an issue decoding the body"}

  defp api_token, do: Application.fetch_env!(:onfido, :api_token)
  defp api_base, do: Application.fetch_env!(:onfido, :api_base)
end
