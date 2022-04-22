class CategoryController < ApplicationController
  def index
    render plain: "Hola mundo!! en category" 
  end
  def edit_category
    render plain: "Hola mundo!! editando la categoria" 
  end
end
