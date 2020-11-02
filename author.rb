class Author
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        Author.all << self 
    end

    def self.all
        @@all
    end

    def books
        Book.all.select { |book| book.author == self}
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def total_words
        self.books.sum {|books| books.word_count}
    end

    def self.most_words
        most = 0
        author_most = nil 
        self.all.each do |author|
            if author.total_words > most 
                most = author.total_words
                author_most = author
            end
        end 
        author_most 
    end


    # def self.most_words
    #     count = 0
    #     author_most = nil
    #     Book.all.find do |book|
    #         if book.word_count > 0
    #             count = book.word_count 
    #             author_most = book.author 
    #         end 
    #     end 
    #     author_most               
    # end


end

# most = 0
# Book.all.map {|book| book.word_count > most} 




