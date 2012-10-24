=begin
require 'uri'

configure :production, :development, :test do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/derp_bear')

  ActiveRecord::Base.establish_connection(
      :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
      :host => db.host,
      :username => db.user,
      :password => db.password,
      :database => db.path[1..-1],
      :encoding => 'utf8'
  )
end=end
