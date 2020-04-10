json.id project.id 
json.name project.name
json.description project.description
json.short_description project.short_description
json.status project.status
json.created_at project.created_at
json.updated_at project.updated_at

# if project.thumbnail.attached?
#   json.thumbnail project.thumbnail.service_url
# end

json.technology do 
  json.fdm project.fdm
  json.advanced project.advanced
  json.cnc project.cnc
  json.lasercutter project.lasercutter
  json.electronics project.electronics
  json.silicone project.silicone
end
json.assembly project.assembly
json.printer_settings project.printer_settings
json.comments project.comments

json.url project_url(project, format: :json)
