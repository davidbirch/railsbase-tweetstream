# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"

# import the seed data for keywords
CSV.open("db/data/keywords.csv", "r").each do |row|
  Keyword.find_or_create_by(keyword_value: row[0])
end

# import the seed data for keywords
CSV.open("db/data/filters.csv", "r").each do |row|
  Filter.find_or_create_by(filter_value: row[0])
end