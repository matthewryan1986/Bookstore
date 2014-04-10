class ShopController < ApplicationController
  def index
      @books = Book.order("title").all
  end
end
