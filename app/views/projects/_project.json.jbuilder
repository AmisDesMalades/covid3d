json.id project.id
json.name project.name
json.description project.description
json.short_description project.short_description
json.created_at project.created_at
json.updated_at project.updated_at
json.category project.category
json.validation project.validation
json.license project.license
json.assembly project.assembly
json.printer_settings project.printer_settings
json.comments project.comments

json.image project.image_url
json.stls project.stls_url

json.technology do
  json.fdm project.fdm
  json.advanced project.advanced
  json.cnc project.cnc
  json.lasercutter project.lasercutter
  json.electronics project.electronics
  json.silicone project.silicone
end

json.url project_url(project, format: :json)
