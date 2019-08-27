# frozen_string_literal: true

require 'csv'

filepath = './data/soybean-large.csv'

CSV.foreach(filepath) do |row|
  puts "#{row[0]} | #{row[1]} | #{row[2]}"
end