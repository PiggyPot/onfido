defmodule Onfido.Resources.SdkToken do
  alias Onfido.Comms.HttpDriver

  @doc """
  Generate a token for the SDK to use (expires after 90 minutes)

  ## Example

        Onfido.Resources.SdkToken.generate(%{
          applicant_id: "<applicant-id>",
          referrer: "https://url-where-javascript-sdk-used.com"
        })
  """
  def generate(params) do
    HttpDriver.request(:post, "/sdk_token", params)
  end
end

