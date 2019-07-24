require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("chris")
author2 = Author.new("elisa")
author3 = Author.new("beatlejuice")


m1 = Magazine.new("legos", "toys")
m2 = Magazine.new("k'nex", "toys")
m3 = Magazine.new("play-dough", "mess-makers")
m4 = Magazine.new("play-boy", "adult")


article1 = Article.new(author1, m1, "this lego trick TERRIFIES lego masters", "should have highest word word word word word count")

article2 = Article.new(author3, m4, "SAY IT ONE MORE TIME!", "art tickle content content")

article3 = Article.new(author2, m4, "play-dough is phun!", "art tickle content content content")

articl4 = Article.new(author3, m1, "LEGOOO SWOOOP", "art tickle content content content content")

articl5 = Article.new(author2, m2, "title5", "art tickle content content content content content")

articl6 = Article.new(author1, m3, "title6", "art tickle content content content content content content")














### DO NOT REMOVE THIS
binding.pry

0
