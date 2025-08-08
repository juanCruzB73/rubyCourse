dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def get_city_names(hash)
    hash.keys
end

def get_area_code(hash,key)
    if hash.key?(key)
        return hash[key]
    else
        return "that city is not valid"
    end
end
loop do
    puts "salir?[Y/N]"
    option = gets.chomp.downcase
    break if option=="y"
    puts "ingrese nombre de ciudad para saber su codigo"
    puts get_city_names(dial_book)
    city=gets.chomp.downcase
    puts get_area_code(dial_book,city)
end