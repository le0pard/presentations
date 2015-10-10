# rackup hello_world.ru
run ->(env) { [200, {"Content-Type" => "text/html"}, ["Hello World!"]] }