defmodule Onfido.Resources.Document do
  alias Onfido.Comms.HttpDriver

  @doc """
  List documents for a given applicant.

  ## Example

        Onfido.Resources.Document.list("<applicant-id>")
  """
  def list(applicant_id, document_id) do
    HttpDriver.request(:get, "/applicants/#{applicant_id}/documents")
  end

  @doc """
  Get document for a given applicant.

  ## Example

        Onfido.Resources.Document.get("<applicant-id>", "<document-id>")
  """
  def get(applicant_id, document_id) do
    HttpDriver.request(:get, "/applicants/#{applicant_id}/documents/#{document_id}")
  end

  @doc """
  Download document for a given applicant.

  ## Example

        Onfido.Resources.Document.download("<applicant-id>", "<document-id>")
  """
  def download(applicant_id, document_id) do
    HttpDriver.request(:get, "/applicants/#{applicant_id}/documents/#{document_id}/download")
  end


  @doc """
  Upload document for a given applicant.

  ## Example

        Onfido.Resources.Document.update("<applicant-id>, %{
          file: "...",
          type: "passport",
          side: "front",
          issuing_country: "GBP"
        })
  """
  def upload(applicant_id, params) do
    HttpDriver.request(:post, "/applicants/#{applicant_id}/documents", params)
  end
end

