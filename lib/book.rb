class Book
  attr_accessor :author, :page_count, :genre
  attr_reader :title

  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  # The reason we are using only a reader macro and a custom setter method
  # is because we need to modify this method to shovel genres into the class
  def genre=(genre)
    @genre = genre
    GENRES << genre
  end
end