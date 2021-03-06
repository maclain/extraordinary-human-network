class Post < ActiveRecord::Base	
  attr_accessible :content, :human_id
  belongs_to :human
  default_scope -> { order('created_at DESC') }
  validates_presence_of :human_id
  validates_presence_of :content
end
