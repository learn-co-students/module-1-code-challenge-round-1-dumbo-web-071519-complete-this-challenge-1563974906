# HAS MANY ARTICLES #

class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_article(magazine, title, content)
    Article.new(self, magazine, title, content)
  end

  def articles
    Article.all.select { |article| article.author == self }
  end

  def magazines
    articles.map { |article| article.magazine }.uniq
  end

  def show_specialties
    magazines.map { |magazine| magazine.category }.uniq
  end

  def self.most_active
    all.sort_by { |author| author.articles.count }[-1]
  end

  def self.most_verbose
    all.sort_by {
      |author| author.articles.map {
        |article| article.content.split.count
        }
      }[-1]
  end

end
