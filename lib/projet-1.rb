

def word_counter(str_corpus, tab_dictionnary)

  occurence = [''] * tab_dictionnary.length

  hash_dico = tab_dictionnary.zip(occurence).to_h

  tab_dictionnary.length.times do |i|
    str_corpus = (str_corpus.gsub(/[']/,' !').delete("?!,.")).downcase
    # puts str_corpus
    # puts


    hash_dico[tab_dictionnary[i]] = str_corpus.split.count(tab_dictionnary[i])
    # print hash_dico
    # sleep(0.15)
  end

  return hash_dico.reject{|k,v| v==0}

end

# dictionnaire = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

# print word_counter("Howdy below go partner, Howdy sit down ! How's it going?",dictionnaire)


oeuvre = 'o.txt'
corpus = File.read(oeuvre)
dico = ["anonymous","the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

# print word_counter(corpus, dico)


puts "------------------------------------------------------"
grosmots = 'grosmots.txt'
tab_grosmots =  File.read(grosmots).split("\n")



print word_counter(corpus, tab_grosmots)
puts
puts