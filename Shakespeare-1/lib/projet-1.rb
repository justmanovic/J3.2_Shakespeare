

def word_counter(str_corpus, tab_dictionnary)

  occurence = [''] * tab_dictionnary.length

  hash_dico = tab_dictionnary.zip(occurence).to_h

  tab_dictionnary.length.times do |i|
    str_corpus = (str_corpus.delete("?!,.'")).downcase

    # puts str_corpus.split
    # puts tab_dictionnary[i]
    # puts str_corpus.split.count(tab_dictionnary[i])
    hash_dico[tab_dictionnary[i]] = str_corpus.split.count(tab_dictionnary[i])
    print hash_dico
    puts
    sleep(1)
  end

  return hash_dico.reject{|k,v| v==0}

end

dictionnaire = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]


print word_counter("Howdy below go partner, Howdy sit down ! How's it going?",dictionnaire)