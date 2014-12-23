class Block < ActiveRecord::Base
  include RankedModel

  belongs_to :email

  ranks :row_order, :with_same => :email_id
end
