defmodule Onfido.Resources.StreetLevelCode do
  alias Onfido.Comms.HttpDriver

  @doc """
  Verify a code which has been sent to an applicant

  ## Example

        Onfido.Resources.StreetLevelCode.submit(%{
          code: "<code-on-posted-letter>"
        })
  """
  def submit(params) do
    HttpDriver.request(:post, "/slc", params)
  end
end

