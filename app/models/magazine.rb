# HAS MANY ARTICLES #

class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find { |magazine| magazine.name ==  name }
  end

  def articles
    Article.all.select { |article| article.magazine == self }
  end

  def contributors
    articles.map { |article| article.author }
  end

  def article_titles
    articles.map { |article| article.title  }
  end

  def per_article_word_count
    articles.map { |article| article.content.split.count }
  end

  # Returns a number that is the total number of words for all of the articles in this magazine #
  def word_count
    per_article_word_count.reduce { |sum, count| sum + count }
  end

end
