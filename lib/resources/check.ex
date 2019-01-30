defmodule Onfido.Resources.Check do
  alias Onfido.Comms.HttpDriver

  @doc """
  List checks for an applicant

  ## Example

        Onfido.Resources.Check.list("<applicant-id>")
  """
  def list(applicant_id) do
    HttpDriver.request(:get, "/applicants/#{applicant_id}/checks")
  end


  @doc """
  Get a check for an applicant

  ## Example

        Onfido.Resources.Check.create("<applicant-id>", "<check-id>")
  """
  def get(applicant_id, check_id) do
    HttpDriver.request(:get, "/applicants/#{applicant_id}/checks/#{check_id}")
  end

  @doc """
  Create a check for an applicant

  ## Example

        Onfido.Resources.Check.create("<applicant-id>", %{
          type: "standard",
          async: true
        })
  """
  def create(applicant_id, params) do
    HttpDriver.request(:post, "/applicants/#{applicant_id}/checks", params)
  end

  @doc """
  Resume a check for an applicant

  ## Example

        Onfido.Resources.Check.resume("<applicant-id>", "<check-id>")
  """
  def resume(applicant_id, check_id, params \\ %{}) do
    HttpDriver.request(:post, "/applicants/#{applicant_id}/checks/#{check_id}/resume", params)
  end
end
