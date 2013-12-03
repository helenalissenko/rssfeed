require 'csv'

namespace :import do
  task :users => :environment do
    csv_text = File.read('data.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      User.create!(row.to_hash)
    end
  end
end