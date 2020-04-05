class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
  enum technology: [:fdm, :sls, :stereolithography, :others]

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
end
