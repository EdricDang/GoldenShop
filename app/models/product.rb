class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates_processing_of :image
  validates :name, presence: true
  validates :image, presence: true
  validates :price, presence: true
  validates :category_id, presence: true
  validates :user_id, presence: true

  has_many :line_items
  before_destroy :check_if_has_line_item

private

  def check_if_has_line_item
    if line_items.empty?
        return true
    else
        errors.add(:base, 'This product has a LineItem')
        return false
    end
  end
end
