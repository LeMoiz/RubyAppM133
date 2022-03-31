class Book < ApplicationRecord
  belongs_to :subject
  validates_presence_of :title
  validates_presence_of :price, :message=> "Error Message"
end
