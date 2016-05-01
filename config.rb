###
# Page options, layouts, aliases and proxies
###


activate :blog do |blog|
  blog.permalink = "posts/{title}"
  blog.sources = "posts/{title}"
  blog.default_extension = ".html.md"
  blog.paginate = true
  blog.page_link = "p{num}"
  blog.per_page = 5
end

# activate :deploy do |deploy|
#   deploy.method = :git
#   deploy.branch = 'master'
#   deploy.build_before = true
# end

activate :directory_indexes

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
