module ApplicationHelper
	 def resource_name
    :human
  end

  def resource
    @resource ||= Human.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:human]
  end
end
