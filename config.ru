use Rack::Static,
  :urls => ["/assets/css", "/assets/fonts", "/assets/images", "/assets/images/projects", "/assets/js", "/assets/js/libs"],
  :root => "public"


map "/" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=3600' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
end


# map "/another-page" do
#   run lambda { |env|
#   [
#     200, 
#     {
#       'Content-Type'  => 'text/html', 
#       'Cache-Control' => 'public, max-age=86400' 
#     },
#     File.open('public/another-page.html', File::RDONLY)
#   ]
# }
# end