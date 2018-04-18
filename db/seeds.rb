require_relative("../models/student.rb")


# Student.delete_all()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 16
  })
  student1.save

  student2 = Student.new({
    "first_name" => "Hermione",
    "last_name" => "Granger",
    "house" => "Gryffindor",
    "age" => 17
    })

    student2.save

    house1 = House.new({
      "name" => "gryffindor",
      "url" => "https://images-na.ssl-images-amazon.com/images/I/81mewfatTSL._UX342_.jpg"
      })
      house1.save

    house2 = House.new({
      "name" => "Ravenclaw",
      "url" => "https://vignette.wikia.nocookie.net/harrypotter/images/2/29/0.41_Ravenclaw_Crest_Transparent.png/revision/latest?cb=20161020182442"
      })
      house2.save
    house3 = House.new({
      "name" => "Slytherin",
      "url" => "https://vignette.wikia.nocookie.net/harrypotter/images/d/d3/0.61_Slytherin_Crest_Transparent.png/revision/latest?cb=20161020182557"
      })
      house3.save
    house4 = House.new({
      "name" => "Hufflepuff",
      "url" => "https://vignette.wikia.nocookie.net/harrypotter/images/5/50/0.51_Hufflepuff_Crest_Transparent.png/revision/latest?cb=20161020182518"
       })
