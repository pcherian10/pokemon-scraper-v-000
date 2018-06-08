class Pokemon

  attr_accessor :name, :type

  @@all = []

  def initialize (id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save (name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name,type)
  end

  def self.find (id)
    @@all[id]
  end


end


=begin
class Cat
  @@all = []
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    @@all << self
  end
  def self.all
    @@all
  end
  def self.save(name, breed, age, database_connection)
    database_connection.execute("INSERT INTO cats (name, breed, age) VALUES (?, ?, ?)",name, breed, age)
  end
end
database_connection = SQLite3::Database.new('db/pets.db')
Cat.new("Maru", "scottish fold", 3)
Cat.new("Hana", "tortoiseshell", 1)
Cat.all.each do |cat|
  Cat.save(cat.name, cat.breed, cat.age, database_connection)
end

=end
