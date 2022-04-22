class CategoriesController < ApplicationController
  def index
    @category = Category.first
  end
end
