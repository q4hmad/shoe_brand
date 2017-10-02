require ("sinatra")
require ("pry")
require ("sinatra/reloader")
also_reload(".lib/**/*.rb")
require("sinatra/activerecord")
require ("./lib/store")
require("./lib/brand")
require ("pg")
require('pry')



get("/") do
  @stores = Store.all()
  erb(:index)
end

post("/") do
  name = params.fetch("name")
  @stores = Store.create({:name => name, :id => nil})
  erb(:index)
end

get('/stores_update/:id/edit') do
  @stores = Store.find(params.fetch("id").to_i())
  erb(:store_edit)
end

patch("/stores/:id") do
name = params.fetch("name")
  @stores = Store.find(params.fetch("id").to_i())
  @stores.update({:name => name})
  @stores = Store.all()
  erb(:index)
end
