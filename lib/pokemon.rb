class Pokemon

  @@all = []


  def initialize (name, type, db)

    @name = name
    @breed = breed
    @age = age
  

  end


  def save
    @@all << self
  end

  def find


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
