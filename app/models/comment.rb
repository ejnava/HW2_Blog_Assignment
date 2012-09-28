class Comment < ActiveRecord::Base
  attr_accessible :author, :body, :post_id
  belongs_to :post
  validates :post_id, :presence => true
  validates :body, :presence => true
  validates :author, :presence => true

end
