class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :order_items
  mount_uploader :image, ImageUploader
  validates_processing_of :image
  validate :image_size_validation
  validates :name, presence: true
  validates :image, presence: true
  validates :price, presence: true
  validates :category_id, presence: true
  validates :user_id, presence: true

  private
    def image_size_validation
      errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
    end
end
