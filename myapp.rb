require 'sinatra'
require 'pry'
require 'mysql2'
@@client = Mysql2::Client.new(
  host: 'localhost',
  username: 'root',
  password: 'Abc123@@'
)
@@client.query('use football')
# get '/' do
#   'hello world'
# end
# # get '/hello/:name' do
# #   binding.pry
# #   "hello #{params['name']}!"
# # end
def output(str)
  arr = @@client.query('select * from football_name')
  a = str
  a << " \n danh sach dang co \n"
  arr.each do |row|
    a << "#{row['indexID']} : #{row['name']} \n"
  end
  a
end
get '/hello/:name' do |n|
  "hello #{n}!"
end
post '/posts' do
  id = params['indexID']
  name = params['name']
  @@client.query("
    INSERT INTO football_name(indexID,name)
    VALUES (#{id},'#{name}')")
  output('Da Tao')
end
delete '/delete/:id' do |id|
  @@client.query(
    "DELETE FROM football_name where indexID = #{id}"
  )
  output('Da Xoa')
end
put '/put/:id' do |id|
  ids = params['indexID']
  name = params['name']
  @@client.query(
    "UPDATE football_name
    SET indexID = #{ids}, name = '#{name}'
    where indexID = #{id}"
  )
  output('Da Sua')
end
