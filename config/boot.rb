Slim::Engine.set_default_options attr_wrapper: "'", disable_escape: true

Dir[
  "#{ROOT}/config/initializers/*.rb",
  "#{ROOT}/lib/**/*.rb",
  "#{ROOT}/app/**/*.rb"
].delete_if do |file_name|
    (file_name.match('app/views') || file_name.match('app/routes'))
end.each { |file| require file }



