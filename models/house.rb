class House
  attr_reader id:
  attr_accessor name: , url:
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
end
