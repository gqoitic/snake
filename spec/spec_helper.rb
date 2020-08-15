Dir[File.expand_path('../lib/*.rb', File.dirname(__FILE__))].each do |file|
    require file
end
Dir[File.expand_path('../lib/errors/*.rb', File.dirname(__FILE__))].each do |file|
    require file
end
RSpec.configure do |config|
    # use color in STDOUT
    config.color = true

    # use color not only in STDOUT but also in pages and files
    config.tty = true

    # use the specified formatter
    config.formatter = :documentation # :progress, :html, :textmate
end
