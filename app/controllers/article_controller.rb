class ArticleController < ApplicationController
  wrap_parameters format: [:json, :xml, :url_encoded_form, :multipart_form]

  def index
    @product = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def delete
  end

  def action
    @employee = Employee.find(params[:id])
  end
end

private

def product_params
  params.require(:product).permit(:name, :price, :credit, :debit)
end
