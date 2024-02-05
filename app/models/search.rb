class Search < ApplicationRecord
    def search_books
      books = Book.all

      books = books.where(["name LIKE ?","%#{keyword}"]) if keyword.present?
      books = books.where(["category LIKE ?",category]) if category.present?
      books = books.where(["price >= ?", min_price]) if min_price.present?
      books = books.where(["price <= ?", max_price]) if max_price.present?
      books = books.where(["isdn LIKE ?", isbn]) if isdn.present?

      return books

    end
end
