class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
  end

  def new
    @email = Email.new
  end
  def create
    @email = Email.new(email_params)

    if @email.save
      redirect_to action: :index
    else
      render 'new'
    end
  end

  def edit
    @email = Email.find(params[:id])
  end

  def update
    @email = Email.find(params[:id])

    if @email.update(email_params)
      redirect_to action: :index
    else
      render 'edit'
    end
  end

  def preview
    @email = Email.find(params[:id])
    render 'show'
  end

  def output
    @email = Email.find(params[:id])
    render 'show'
  end

  private
    def email_params
      params.require(:email).permit(:id, :_destroy, :name, :blocks_attributes => [:id, :_destroy, :row_order_position, :block_type, :content_region_1, :content_region_2])
    end
end
