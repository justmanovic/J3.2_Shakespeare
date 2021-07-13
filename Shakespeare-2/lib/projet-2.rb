
# def word_counter(str_corpus, tab_dictionnary)

#   occurence = [''] * tab_dictionnary.length

#   hash_dico = tab_dictionnary.zip(occurence).to_h

#   tab_dictionnary.length.times do |i|
#     str_corpus = (str_corpus.gsub(/[']/,' !').delete("?!,.")).downcase
#     puts str_corpus
#     puts


#     hash_dico[tab_dictionnary[i]] = str_corpus.split.count(tab_dictionnary[i])
#     print hash_dico
#     sleep(0.15)
#   end

#   return hash_dico.reject{|k,v| v==0}

# end

# dico = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

# oeuvre = File.open("oeuvre.txt")
# texte = oeuvre.read
# oeuvre.close

# print oeuvre

# # print word_counter(oeuvre, dico)



fichier = 'o.txt'
corpus = File.read(fichier)
