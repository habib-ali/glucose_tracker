module ApplicationHelper
  def active_tab?(*page_path)
    "active" if request.path.in? page_path
  end
  def date_format_string
    "%d/%m/%Y"
  end
end
