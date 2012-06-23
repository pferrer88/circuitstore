class Product < ActiveRecord::Base
  belongs_to :category
  mount_uploader :foto, ImageUploader
  scope :confirmado, where(:comfirmed => true)
  validates_presence_of :name
  
  def to_s
    "#{name}"
  end
  
end
