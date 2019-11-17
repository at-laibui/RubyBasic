require ('mysql2')
client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "Abc123@@")
# client.query("CREATE DATABASE football")
client.query("use football");
# client.query("CREATE TABLE football_name (indexID int, name varchar(200))");
i=0
@lai = "Lai"
# while i < 18
#   @lai = "Lai #{i}"
#   client.query("INSERT INTO football_name(indexID, name) VALUES (#{i}, '#{@lai}')");
#   client.query(" Delete from football_name where indexID = #{i}")
#   i+=1
# end
# 

# until i > 17
#   @lai = "Lai #{i}"
#   client.query("INSERT INTO football_name(indexID, name) VALUES (#{i}, '#{@lai}')");
#   client.query(" Delete from football_name where indexID = #{i}")
#   i+=1
# end

for i in(1..18) do
  @lai = "Lai #{i}"
  client.query("INSERT INTO football_name(indexID, name) VALUES (#{i}, '#{@lai}')");
  client.query(" Delete from football_name where indexID = #{i}")
end
