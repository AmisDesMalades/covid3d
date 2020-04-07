# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.covid3d.org"
SitemapGenerator::Sitemap.public_path = 'tmp/sitemap'

# Where you want your sitemap.xml.gz file to be uploaded.
SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new( 
  aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
  aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
  fog_provider: 'AWS',
  fog_directory: ENV["AWS_BUCKET"],
  fog_region: ENV["AWS_REGION"]
)

# The full path to your bucket
SitemapGenerator::Sitemap.sitemaps_host = "https://#{'ENV["S3_BUCKET_NAME"]'}.s3.amazonaws.com"

SitemapGenerator::Sitemap.create do
  add soignant_path, priority: 0.7, changefreq: 'weekly'
  add ingenieur_path, priority: 0.7, changefreq: 'weekly'
  add infrastructure_path, priority: 0.7, changefreq: 'weekly'
  add contact_path, priority: 0.7, changefreq: 'weekly'

  add members_path, priority: 0.7, changefreq: 'daily'
  add projects_path, priority: 0.9, changefreq: 'daily'
  add publications_path, priority: 0.9, changefreq: 'daily'
  add notifications_path, priority: 0.9, changefreq: 'daily'

  Project.find_each do |project|
    add project_path(project), lastmod: project.updated_at
  end
end

SitemapGenerator::Sitemap.ping_search_engines