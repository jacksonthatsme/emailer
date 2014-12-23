class Email < ActiveRecord::Base
  has_many :blocks

  accepts_nested_attributes_for :blocks
end
