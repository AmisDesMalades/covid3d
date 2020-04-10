module ProjectsHelper
  def project_status_in_words(project)
    {
      "1" => "en cours de prototypage",
      "2" => "en cours de validation",
      "3" => "en cours de diffusion"
    }[project.status]
  end
end
