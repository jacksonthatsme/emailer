class BlocksController < ApplicationController

  private
    def block_params
      params.require(:block).permit(:block_type, :content_region_1, :content_region_2, :id, :_destroy, :row_order_position)
    end

end

