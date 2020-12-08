class GlucoseReadingsQuery
  attr_reader :date_args

  def initialize(path, params)
    report_type = path.split('/').reject(&:empty?)[1]
    end_date = params[:end_date].to_date
    case report_type
    when "daily"
      start_date = end_date
    when "monthly"
      start_date = end_date.beginning_of_month - 1.month
    when "monthwise"
      start_date = end_date.beginning_of_month
    else
    end

    @date_args = {start_date: start_date, end_date: end_date}
  end

  def report
    readings_data = BloodGulcoseReading.where("date BETWEEN :start_date AND :end_date",@date_args )
    {min: readings_data.minimum(:value), max: readings_data.maximum(:value), avg: readings_data.average(:value).to_i }
  end

end