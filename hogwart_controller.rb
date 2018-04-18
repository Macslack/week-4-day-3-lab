require('sinatra')
require("sinatra/contrib/all")
require("pry-byebug")
require_relative("./models/student.rb")
require_relative("./models/house.rb")

# index
get "/students" do
  @students = Student.all()
  erb(:index)
end

get "/students/new" do
  @houses = House.all()
  erb(:new)
end

post "/students" do
  student = Student.new(params)
  student.save()
  redirect to "/students"
end

get "/houses" do
  @houses = House.all()
  erb(:house)
end
