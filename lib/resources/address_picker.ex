defmodule Onfido.Resources.AddressPicker do
  alias Onfido.Comms.HttpDriver

  @doc """
  Lookup addresses by postcode

  ## Example

        Onfido.Resources.AddressPick.lookup(%{postcode: "SW4 6EH"})
  """
  def lookup(params) do
    HttpDriver.request(:get, "/addresses/pick", params)
  end
end

