require_relative("../db/sqlrunner.rb")
require("pg")
require("pry-byebug")

class House
  attr_reader :id
  attr_accessor :name ,:url

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @url = options['url']
  end

  def save()
    sql = "INSERT INTO houses (name, url) VALUES ($1,$2) RETURNING * ;"
    values = [@name, @url]
    house_data = SqlRunner.run(sql, values)
    @id = house_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses"
    house_hash = SqlRunner.run(sql)
    House.map_house(house_hash)
  end

  def self.map_house(house_data)
    house_data.map{|house_hash| House.new(house_hash)}
  end

  def self.find_by_id(id)
      sql = "SELECT * FROM houses WHERE id = $1;"
      values = [id]
      houses = SqlRunner.run(sql,values)[0]
      House.new(houses)
  end
  # binding.pry
  # nil
end
