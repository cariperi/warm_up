require 'csv'
require 'pry'

class Name
  attr_reader :year,
              :bio_gender,
              :ethnicity,
              :name,
              :count,
              :rank

  @@filename = 'Popular_Baby_Names.csv'

  def initialize(data)
    @year = data[:year]
    @bio_gender = data[:bio_gender]
    @ethnicity = data[:ethnicity]
    @name = data[:name]
    @count = data[:count]
    @rank = data[:rank]
  end

  def self.find_by_name(name)
    rows = CSV.open @@filename, headers: true, header_converters: :symbol
    result = []
    rows.each do |row|
      data = {
        year: row[:year_of_birth],
        bio_gender: row[:gender],
        ethnicity: row[:ethnicity],
        name: row[:childs_first_name],
        count: row[:count],
        rank: row[:rank]
      }
      result << Name.new(data) if row[:childs_first_name] == name
    end
    result
  end

  def self.find_by_year(year)
    rows = CSV.open @@filename, headers: true, header_converters: :symbol
    result = []
    rows.each do |row|
      data = {
        year: row[:year_of_birth],
        bio_gender: row[:gender],
        ethnicity: row[:ethnicity],
        name: row[:childs_first_name],
        count: row[:count],
        rank: row[:rank]
      }
      result << Name.new(data) if row[:year_of_birth] == year
    end
    result
  end

  def self.where(details)
    rows = CSV.open @@filename, headers: true, header_converters: :symbol
    result = []
    rows.each do |row|
      data = {
        year: row[:year_of_birth],
        bio_gender: row[:gender],
        ethnicity: row[:ethnicity],
        name: row[:childs_first_name],
        count: row[:count],
        rank: row[:rank]
      }
      result << Name.new(data) if row[:year_of_birth] == details[:year] && row[:childs_first_name] == details[:name]
    end
    result
  end
end

p Name.find_by_name('HUNTER').count
p Name.find_by_year('2012').count
p Name.where({year: '2012', name: 'HUNTER'}).count