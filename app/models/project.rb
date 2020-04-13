class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: %i[slugged history]
  enum validation: %i[prototype clinical_validation validated]
  enum category: %i[comfort medical_device workgroup]
  enum material: %i[ABS PLA ASA PETG Any]

  has_and_belongs_to_many :members
  has_one_attached :thumbnail
  has_many_attached :images
  has_many_attached :stls

  before_save :compile_markdown

  def compile_markdown
    return unless self.description.present?
    self.description_html =
      Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true).
      render(self.description)
  end

  def category_text
    if self.comfort?
      return "Matériel de protection et de comfort"
    elsif self.medical_device?
      return "Dispositif médical"
    elsif self.workgroup?
      return "Recherche & Developement"
    end
  end

  def validation_text
    if self.prototype?
      return "En cours de prototypage"
    elsif self.clinical_validation?
      return "Validation clinique effectuée"
    elsif self.validated?
      return "Validation finale effectuée"
    end
  end
end
