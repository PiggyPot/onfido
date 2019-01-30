defmodule Onfido.Resources.Report do
  alias Onfido.Comms.HttpDriver

  @doc """
  List reports for a related check

  ## Example

        Onfido.Resources.Report.list("<check-id>")
  """
  def list(check_id) do
    HttpDriver.request(:get, "/checks/#{check_id}/reports")
  end

  @doc """
  Get report for a related check

  ## Example

        Onfido.Resources.Report.get("<check-id>", "<report-id>")
  """
  def get(check_id, report_id) do
    HttpDriver.request(:get, "/checks/#{check_id}/reports/#{report_id}")
  end

  @doc """
  Resume a paused report for a related check

  ## Example

        Onfido.Resources.Report.resume("<check-id>", "<report-id>")
  """
  def resume(check_id, report_id) do
    HttpDriver.request(:post, "/checks/#{check_id}/reports/#{report_id}/resume")
  end

  @doc """
  Cancel a report for a related check

  ## Example

        Onfido.Resources.Report.cancel("<check-id>", "<report-id>")
  """
  def cancel(check_id, report_id) do
    HttpDriver.request(:post, "/checks/#{check_id}/reports/#{report_id}/cancel")
  end
end

