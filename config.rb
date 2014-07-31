require 'builder'
require 'susy'
require 'bootstrap-sass'




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
page "/certifications.html", :layout => :html5
page "/news.html", :layout => :html5
page "/technicalsheets/technicalsheet.html", :layout => :html5
page "/contactus.html", :layout => :html5
page "/products/sourdough.html", :layout => :html5 
page "/products/malts.html", :layout => :html5
page "/products/cultures.html", :layout => :html5
page "/products/enzymes.html", :layout => :html5
page "/products/efree.html", :layout => :html5
page "/products/bakery.html", :layout => :html5
page "/registration-confirmation.html", :layout => :html5
page "/registration.html", :layout => :html5



page "/it/prodotti/pasteacide.html", :layout => :html5
page "/login.html", :layout => :html5
page "/it/login.html", :layout => :html5
page "/it/registrazione.html", :layout => :html5
page "/it/prodotti/malti.html", :layout => :html5
page "/it/prodotti/fermenti.html", :layout => :html5
page "/it/prodotti/enzimi.html", :layout => :html5
page "/it/prodotti/efree.html", :layout => :html5
page "/it/prodotti/bakery.html", :layout => :html5
page "/it/news.html", :layout => :html5
page "/it/soluzioni.html", :layout => :html5
page "/it/contattaci.html", :layout => :html5
page "/it/certificazioni.html", :layout => :html5
page "/it/schedetecniche/schedatecnica.html", :layout => :html5
page "/404.html", :layout => :html5
page "/sitemap.xml", :layout => false




page "/technicalsheets/sourdough/4146.html", :layout => :html5

page "/it/schedetecniche/pasteacide/4146.html", :layout => :html5
page "/technicalsheets/sourdough/4131.html", :layout => :html5

page "/it/schedetecniche/pasteacide/4131.html", :layout => :html5

page "/it/schedetecniche/pasteacide/4131.html", :layout => :html5

page "/it/prodotti/pasteacide-pdf.html", :layout => :html5

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  activate :asset_hash
  # # Minify Javascript on build
  activate :minify_javascript
  activate :minify_html
  activate :gzip
  activate :imageoptim do |imageoptim|
    imageoptim.pngout_options = false # Should disable pngout
  end
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

end
