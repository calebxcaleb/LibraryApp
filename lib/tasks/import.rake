require 'csv'

namespace :import do

  task books: :environment do
    filename = File.join Rails.root, 'Library App Dev test books - PART 1.csv'
    CSV.foreach(filename, headers: true) do |row|
      Book.create!(
        title: row["Title"],
        author: row["Author"],
        genre: row["Genre"],
        subgenre: row["SubGenre"],
        pages: Integer(row["Pages"]),
        publisher: row["Publisher"],
        copies: Integer(row["Copies"])
      )
    end

  end
end