# All thing helpers
module ApplicationHelper
  def current_nav_link_class(test_path)
    return 'nav-link active' if request.path == test_path
    'nav-link'
  end
end
