class ReportsController < ApplicationController
  before_action :fetch_readings_data, only: [:daily, :monthly, :monthwise]
  before_action :authenticate_user!

  def index
  end

  def daily
  end

  def monthly
  end

  def monthwise
  end

  private
  def fetch_readings_data
    @report_data = GlucoseReadingsQuery.new(request.path,params).report
  end
end
