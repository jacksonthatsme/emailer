class BlocksController < ApplicationController
  def update_row_order
    @block = Block.find(block_params[:id])
    @block.row_order_position = block_params[:row_order_position]
    @block.save

    render nothing: true
  end

  private
    def block_params
      params.require(:block).permit(:type, :content, :id, :_destroy, :row_order_position)
    end

end

