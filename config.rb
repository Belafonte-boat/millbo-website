require 'builder'
require 'susy'

activate :deploy do |deploy|
  deploy.method = :ftp
  deploy.host = "web332.webfaction.com"
  deploy.user = "piermaria"
  deploy.password = "Nonmelaricordo2"
  deploy.path = "/home/piermaria/webapps/millbo"
  
end


activate :bower
activate :automatic_image_sizes
activate :livereload
activate :i18n, :mount_at_root => :en


page "/", :layout => :html5
page "/it/", :layout => :html5
page "/solutions.html", :layout => :html5
page "/technicalsheets/technicalsheet.html", :layout => :html5
page "/contactus.html", :layout => :html5
page "/products/sourdough.html", :layout => :html5 
page "/products/malts.html", :layout => :html5
page "/products/cultures.html", :layout => :html5
page "/products/enzymes.html", :layout => :html5
page "/products/efree.html", :layout => :html5
page "/products/bakery.html", :layout => :html5

page "/it/prodotti/pasteacide.html", :layout => :html5 
page "/it/prodotti/malti.html", :layout => :html5
page "/it/prodotti/fermenti.html", :layout => :html5
page "/it/prodotti/enzimi.html", :layout => :html5
page "/it/prodotti/efree.html", :layout => :html5
page "/it/prodotti/bakery.html", :layout => :html5
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
        { icon: "apple-touch-icon-72x72-precomposed.png" },
        { icon: "mstile-144x144", format: :png },
        { icon: "favicon.png", size: "16x16" },
        { icon: "favicon.ico", size: "64x64,32x32,24x24,16x16" },
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
