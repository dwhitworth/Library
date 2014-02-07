
class Book
  attr_reader :author, :title, :id, :status

  def initialize(title = nil, author = nil, id = nil)
    @author = author
    @title = title
    @id = id
    @status = 'available'
  end

  def check_out
      if @status == 'checked_out'
        false
      else
        @status = 'checked_out'
        true
      end
  end

  def check_in
      @status = 'available'
  end

end

class Borrower
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Library

  def initialize(name = nil)
    @books = []
  end

  def books
    @books
  end

  def register_new_book(title, author)
    @books.push(Book.new(title, author, books.count + 1))
  end

  def add_book(title, author)
  end

  def check_out_book(book_id, borrower)
  end

  def check_in_book(book)
  end

  def available_books
  end

  def borrowed_books
  end
end
