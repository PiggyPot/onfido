defmodule Onfido.Resources.Webhook do
  alias Onfido.Comms.HttpDriver

  @doc """
  List webhooks

  ## Example

        Onfido.Resources.Webhook.list()
  """
  def list do
    HttpDriver.request(:get, "/webhooks")
  end

  @doc """
  Get a webhook

  ## Example

        Onfido.Resources.Webhook.get("<webhook-id>")
  """
  def get(webhook_id) do
    HttpDriver.request(:get, "/webhooks/#{webhook_id}")
  end

  @doc """
  Register a webhook

  ## Example

        Onfido.Resources.Webhook.register(%{
          url: "https://yourwebserver.com",
          enabled: true,
          environments: ["live", "sandbox"],
          events: [
            "report.completed",
            "check.completed"
          ]
        })
  """
  def register(params) do
    HttpDriver.request(:post, "/webhooks", params)
  end
end
