dictionary = {
  "bear" => "a creature that fishes in the river for salmon",
  "river" => "a body of water that contains salmon, and sometimes bears",
  "salmon" => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both"
 }

 dictionary.each do |key, value| puts "#{key} => #{value}" end