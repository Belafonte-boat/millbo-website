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






page "/technicalsheets/sourdough/4131.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4131.html", :layout => :html5

page "/it/schedetecniche/pasteacide/4139.html", :layout => :html5
page "technicalsheets/sourdough/4139.html", :layout => :html5

page "/technicalsheets/sourdough/4146.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4146.html", :layout => :html5

page "/technicalsheets/sourdough/4199.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4199.html", :layout => :html5

page "/technicalsheets/sourdough/4228.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4228.html", :layout => :html5

page "/technicalsheets/sourdough/4260.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4260.html", :layout => :html5

page "/technicalsheets/sourdough/4262.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4262.html", :layout => :html5

page "/technicalsheets/sourdough/4505.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4505.html", :layout => :html5

page "/technicalsheets/sourdough/4506.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4506.html", :layout => :html5

page "/technicalsheets/sourdough/4507.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4507.html", :layout => :html5

page "/technicalsheets/sourdough/4508.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4508.html", :layout => :html5

page "/technicalsheets/sourdough/4707.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4707.html", :layout => :html5

page "/technicalsheets/sourdough/4888.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4888.html", :layout => :html5

page "/technicalsheets/sourdough/4889.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4889.html", :layout => :html5




page "/technicalsheets/efree/3000.html", :layout => :html5
page "/it/schedetecniche/efree/3000.html", :layout => :html5

page "/technicalsheets/efree/3020.html", :layout => :html5
page "/it/schedetecniche/efree/3020.html", :layout => :html5

page "/technicalsheets/efree/3040.html", :layout => :html5
page "/it/schedetecniche/efree/3040.html", :layout => :html5

page "/technicalsheets/efree/3041.html", :layout => :html5
page "/it/schedetecniche/efree/3041.html", :layout => :html5




page "/technicalsheets/bakery/4700.html", :layout => :html5
page "/it/schedetecniche/bakery/4700.html", :layout => :html5

page "/technicalsheets/bakery/4701.html", :layout => :html5
page "/it/schedetecniche/bakery/4701.html", :layout => :html5

page "/technicalsheets/bakery/6628.html", :layout => :html5
page "/it/schedetecniche/bakery/6628.html", :layout => :html5

page "/technicalsheets/bakery/6630.html", :layout => :html5
page "/it/schedetecniche/bakery/6630.html", :layout => :html5

page "/technicalsheets/bakery/6631.html", :layout => :html5
page "/it/schedetecniche/bakery/6631.html", :layout => :html5

page "/technicalsheets/bakery/4103.html", :layout => :html5
page "/it/schedetecniche/bakery/4103.html", :layout => :html5

page "/technicalsheets/bakery/6304.html", :layout => :html5
page "/it/schedetecniche/bakery/6304.html", :layout => :html5

page "/technicalsheets/bakery/6335.html", :layout => :html5
page "/it/schedetecniche/bakery/6335.html", :layout => :html5

page "/technicalsheets/bakery/6688.html", :layout => :html5
page "/it/schedetecniche/bakery/6688.html", :layout => :html5

page "/technicalsheets/bakery/6689.html", :layout => :html5
page "/it/schedetecniche/bakery/6689.html", :layout => :html5

page "/technicalsheets/bakery/4155.html", :layout => :html5
page "/it/schedetecniche/bakery/4155.html", :layout => :html5

page "/technicalsheets/bakery/6341.html", :layout => :html5
page "/it/schedetecniche/bakery/6341.html", :layout => :html5

page "/technicalsheets/bakery/6344.html", :layout => :html5
page "/it/schedetecniche/bakery/6344.html", :layout => :html5

page "/technicalsheets/bakery/6365.html", :layout => :html5
page "/it/schedetecniche/bakery/6365.html", :layout => :html5



page "/technicalsheets/enzymes/1108.html", :layout => :html5
page "/it/schedetecniche/enzimi/1108.html", :layout => :html5

page "/technicalsheets/enzymes/1118.html", :layout => :html5
page "/it/schedetecniche/enzimi/1118.html", :layout => :html5

page "/technicalsheets/enzymes/1123.html", :layout => :html5
page "/it/schedetecniche/enzimi/1123.html", :layout => :html5

page "/technicalsheets/enzymes/1124.html", :layout => :html5
page "/it/schedetecniche/enzimi/1124.html", :layout => :html5

page "/technicalsheets/enzymes/1135.html", :layout => :html5
page "/it/schedetecniche/enzimi/1135.html", :layout => :html5

page "/technicalsheets/enzymes/1171.html", :layout => :html5
page "/it/schedetecniche/enzimi/1171.html", :layout => :html5



page "/technicalsheets/malts/4021.html", :layout => :html5
page "/it/schedetecniche/malti/4021.html", :layout => :html5

page "/technicalsheets/malts/4022.html", :layout => :html5
page "/it/schedetecniche/malti/4022.html", :layout => :html5

page "/technicalsheets/malts/4023.html", :layout => :html5
page "/it/schedetecniche/malti/4023.html", :layout => :html5

page "/technicalsheets/malts/4025.html", :layout => :html5
page "/it/schedetecniche/malti/4025.html", :layout => :html5

page "/technicalsheets/malts/4026.html", :layout => :html5
page "/it/schedetecniche/malti/4026.html", :layout => :html5

page "/technicalsheets/malts/4030.html", :layout => :html5
page "/it/schedetecniche/malti/4030.html", :layout => :html5

page "/technicalsheets/malts/4039.html", :layout => :html5
page "/it/schedetecniche/malti/4039.html", :layout => :html5



page "/technicalsheets/cultures/2002.html", :layout => :html5
page "/it/schedetecniche/cultures/2002.html", :layout => :html5

page "/technicalsheets/cultures/2004.html", :layout => :html5
page "/it/schedetecniche/cultures/2004.html", :layout => :html5

page "/technicalsheets/cultures/2004i.html", :layout => :html5
page "/it/schedetecniche/cultures/2004i.html", :layout => :html5

page "/technicalsheets/cultures/2005.html", :layout => :html5
page "/it/schedetecniche/cultures/2005.html", :layout => :html5

page "/technicalsheets/cultures/2010.html", :layout => :html5
page "/it/schedetecniche/cultures/2010.html", :layout => :html5


page "/it/prodotti/pasteacide-pdf.html", :layout => :html5
page "/products/sourdough-pdf.html", :layout => :html5

page "/it/prodotti/efree-pdf.html", :layout => :html5
page "/products/efree-pdf.html", :layout => :html5

page "/it/prodotti/bakery-pdf.html", :layout => :html5
page "/products/bakery-pdf.html", :layout => :html5

page "/it/prodotti/fermenti-pdf.html", :layout => :html5
page "/products/cultures-pdf.html", :layout => :html5

page "/it/prodotti/malti-pdf.html", :layout => :html5
page "/products/malts-pdf.html", :layout => :html5

page "/it/prodotti/enzimi-pdf.html", :layout => :html5
page "/products/enzymes-pdf.html", :layout => :html5







page "/technicalsheets/sourdough/4131pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4131pdf.html", :layout => :html5

page "/it/schedetecniche/pasteacide/4139pdf.html", :layout => :html5
page "technicalsheets/sourdough/4139pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4146pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4146pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4199pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4199pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4228pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4228pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4260pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4260pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4262pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4262pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4505pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4505pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4506pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4506pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4507pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4507pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4508pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4508pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4707pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4707pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4888pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4888pdf.html", :layout => :html5

page "/technicalsheets/sourdough/4889pdf.html", :layout => :html5
page "/it/schedetecniche/pasteacide/4889pdf.html", :layout => :html5




page "/technicalsheets/efree/3000pdf.html", :layout => :html5
page "/it/schedetecniche/efree/3000pdf.html", :layout => :html5

page "/technicalsheets/efree/3020pdf.html", :layout => :html5
page "/it/schedetecniche/efree/3020pdf.html", :layout => :html5

page "/technicalsheets/efree/3040pdf.html", :layout => :html5
page "/it/schedetecniche/efree/3040pdf.html", :layout => :html5

page "/technicalsheets/efree/3041pdf.html", :layout => :html5
page "/it/schedetecniche/efree/3041pdf.html", :layout => :html5




page "/technicalsheets/bakery/4700pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/4700pdf.html", :layout => :html5

page "/technicalsheets/bakery/4701pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/4701pdf.html", :layout => :html5

page "/technicalsheets/bakery/6628pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/6628pdf.html", :layout => :html5

page "/technicalsheets/bakery/6630pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/6630pdf.html", :layout => :html5

page "/technicalsheets/bakery/6631pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/6631pdf.html", :layout => :html5

page "/technicalsheets/bakery/4103pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/4103pdf.html", :layout => :html5

page "/technicalsheets/bakery/6304pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/6304pdf.html", :layout => :html5

page "/technicalsheets/bakery/6335pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/6335pdf.html", :layout => :html5

page "/technicalsheets/bakery/6688pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/6688pdf.html", :layout => :html5

page "/technicalsheets/bakery/6689pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/6689pdf.html", :layout => :html5

page "/technicalsheets/bakery/4155pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/4155pdf.html", :layout => :html5

page "/technicalsheets/bakery/6341pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/6341pdf.html", :layout => :html5

page "/technicalsheets/bakery/6344pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/6344pdf.html", :layout => :html5

page "/technicalsheets/bakery/6365pdf.html", :layout => :html5
page "/it/schedetecniche/bakery/6365pdf.html", :layout => :html5



page "/technicalsheets/enzymes/1108pdf.html", :layout => :html5
page "/it/schedetecniche/enzimi/1108pdf.html", :layout => :html5

page "/technicalsheets/enzymes/1118pdf.html", :layout => :html5
page "/it/schedetecniche/enzimi/1118pdf.html", :layout => :html5

page "/technicalsheets/enzymes/1123pdf.html", :layout => :html5
page "/it/schedetecniche/enzimi/1123pdf.html", :layout => :html5

page "/technicalsheets/enzymes/1124pdf.html", :layout => :html5
page "/it/schedetecniche/enzimi/1124pdf.html", :layout => :html5

page "/technicalsheets/enzymes/1135pdf.html", :layout => :html5
page "/it/schedetecniche/enzimi/1135pdf.html", :layout => :html5

page "/technicalsheets/enzymes/1171pdf.html", :layout => :html5
page "/it/schedetecniche/enzimi/1171pdf.html", :layout => :html5



page "/technicalsheets/malts/4021pdf.html", :layout => :html5
page "/it/schedetecniche/malti/4021pdf.html", :layout => :html5

page "/technicalsheets/malts/4022pdf.html", :layout => :html5
page "/it/schedetecniche/malti/4022pdf.html", :layout => :html5

page "/technicalsheets/malts/4023pdf.html", :layout => :html5
page "/it/schedetecniche/malti/4023pdf.html", :layout => :html5

page "/technicalsheets/malts/4025pdf.html", :layout => :html5
page "/it/schedetecniche/malti/4025pdf.html", :layout => :html5

page "/technicalsheets/malts/4026pdf.html", :layout => :html5
page "/it/schedetecniche/malti/4026pdf.html", :layout => :html5

page "/technicalsheets/malts/4030pdf.html", :layout => :html5
page "/it/schedetecniche/malti/4030pdf.html", :layout => :html5

page "/technicalsheets/malts/4039pdf.html", :layout => :html5
page "/it/schedetecniche/malti/4039pdf.html", :layout => :html5



page "/technicalsheets/cultures/2002pdf.html", :layout => :html5
page "/it/schedetecniche/cultures/2002pdf.html", :layout => :html5

page "/technicalsheets/cultures/2004pdf.html", :layout => :html5
page "/it/schedetecniche/cultures/2004pdf.html", :layout => :html5

page "/technicalsheets/cultures/2004ipdf.html", :layout => :html5
page "/it/schedetecniche/cultures/2004ipdf.html", :layout => :html5

page "/technicalsheets/cultures/2005pdf.html", :layout => :html5
page "/it/schedetecniche/cultures/2005pdf.html", :layout => :html5

page "/technicalsheets/cultures/2010pdf.html", :layout => :html5
page "/it/schedetecniche/cultures/2010pdf.html", :layout => :html5



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
