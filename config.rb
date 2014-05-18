require 'builder'
require 'susy'




activate :bower
activate :automatic_image_sizes
activate :livereload
activate :i18n, :mount_at_root => :en


page "/", :layout => :html5
page "/it/", :layout => :html5
page "/products/sourdough.html", :layout => :html5 
page "/products/malts.html", :layout => :html5
page "/products/cultures.html", :layout => :html5
page "/products/enzymes.html", :layout => :html5
page "/products/efree.html", :layout => :html5
page "/products/bakery.html", :layout => :html5

page "/prodotti/pasteacide.html", :layout => :html5 
page "/prodotti/malti.html", :layout => :html5
page "/prodotti/fermenti.html", :layout => :html5
page "/prodotti/enzimi.html", :layout => :html5
page "/prodotti/efree.html", :layout => :html5
page "/prodotti/bakery.html", :layout => :html5
page "/404.html", :layout => :html5
page "/sitemap.xml", :layout => false

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # # Minify Javascript on build
  activate :minify_javascript
  activate :minify_html
  # # Create favicon/touch icon set from source/favicon_base.png
  activate :favicon_maker do |f|
    f.template_dir  = File.join(root, 'source')
    f.output_dir    = File.join(root, 'build')
    f.icons = {
      "favicon_template.png" => [
        { icon: "apple-touch-icon-152x152-precomposed.png" },
        { icon: "apple-touch-icon-114x114-precomposed.png" },
        { icon: "apple-touch-icon-72x72-precomposed.png" }
      ]
    }
  end

  # # Enable cache buster
  activate :cache_buster
  #activate :image_optim

  # # Use relative URLs
  #activate :relative_assets
  # # To put width and height inside tag and to compression

  activate :gzip
  activate :smusher

  # Or use a different image path
  #set :http_path, "http://thedoers.co/"
end
