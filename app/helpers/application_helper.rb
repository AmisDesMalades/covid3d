module ApplicationHelper
  def bootstrap_class_for(flash_type)
    {
      success: "alert-success",
      error: "alert-danger",
      alert: "alert-warning",
      notice: "alert-info"
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17&key=AIzaSyAnQ0ZKQy4I1J6ltHdaGjQIbzhj6KGY3xo"
  end

  def google_maps_api_key
    ENV.fetch('GOOGLE_MAPS_API_KEY') { raise "Please set the ENV var GOOGLE_MAPS_API_KEY" }
  end
end
