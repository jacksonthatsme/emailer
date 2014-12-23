class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def new
    @email = Email.new
    @block = Block.new
  end
  def create
    @email = Email.new(email_params)

    if @email.save
      redirect_to action: :index
    else
      render 'new'
    end
  end

  def update_row_order
    @block = Block.find(block_params[:id])
    @block.row_order_position = block_params[:row_order_position]
    @block.save

    render nothing: true
  end

  private
    def email_params
      params.require(:email).permit(:id, :_destroy, :name, :blocks_attributes => [:id, :_destroy, :row_order_position, :type, :content])
    end
end
