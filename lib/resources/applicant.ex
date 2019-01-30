defmodule Onfido.Resources.Applicant do
  alias Onfido.Comms.HttpDriver

  @doc """
  List an applicants

  ## Example

        Onfido.Resources.Applicant.list(include_deleted: true)
  """
  def list(params) do
    HttpDriver.request(:get, "/applicants", params)
  end

  @doc """
  Get an applicant

  ## Example

        Onfido.Resources.Applicant.get("<applicant-id>")
  """
  def get(id) do
    HttpDriver.request(:get, "/applicants/#{id}")
  end

  @doc """
  Create an applicant.

  ## Example

        Onfido.Resources.Applicant.create(%{
          first_name: "Joe",
          last_name: "Bloggs",
          email: "joe@email.com",
          addresses: [%{
            flat_number: null,
            building_number: "100",
            building_name: null,
            street: "Main Street",
            sub_street: null,
            town: "London",
            state: null,
            postcode: "SW4 6EH",
            country: "GBR",
            start_date: "2013-08-10",
            end_date: null
          }]
        })
  """
  def create(params) do
    HttpDriver.request(:post, "/applicants", params)
  end

  @doc """
  Update an existing applicant.

  ## Example

        Onfido.Resources.Applicant.update("<applicant-id>", %{
          first_name: "Joe",
          last_name: "Bloggs",
          email: "joe@email.com",
          addresses: [%{
            flat_number: null,
            building_number: "100",
            building_name: null,
            street: "Main Street",
            sub_street: null,
            town: "London",
            state: null,
            postcode: "SW4 6EH",
            country: "GBR",
            start_date: "2013-08-10",
            end_date: null
          }]
        })
  """
  def update(applicant_id, params) do
    HttpDriver.request(:put, "/applicants/#{applicant_id}", params)
  end

  @doc """
  Delete an existing applicant

  ## Example

        Onfido.Resources.Applicant.delete("<applicant-id>")
  """
  def delete(applicant_id) do
    HttpDriver.request(:delete, "/applicants/#{applicant_id}")
  end

  @doc """
  Restore applicants that are scheduled for deletion

  ## Example

        Onfido.Resources.Applicant.restore("<applicant-id>")
  """
  def restore(applicant_id, params \\ %{}) do
    HttpDriver.request(:post, "/applicants/#{applicant_id}/restore", params)
  end
end
