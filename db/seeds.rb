# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create [{:name => 'Construction'},
{:name => 'Financial'},
{:name => 'Educational'},
{:name => 'IT'},
{:name => 'Others'}]Category.create [{:n
User.create :name =>'admin', :email => 'admin@projects.af', :password =>'adm1nP@ss'
