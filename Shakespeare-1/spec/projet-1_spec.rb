require_relative '../lib/projet-1'

describe 'la fonction word_counter' do

  it 'compte le nombre d occurence des mots présents dans le corpus et retour un hash contenant {mot,nb d occurence}' do
    expect(word_counter("Howdy partner, sit down! How's it going?", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}) 
  end
end





