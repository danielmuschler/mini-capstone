class Product < ApplicationRecord
  validates :price, presence: true
  validates :price, numericality: true
  validates :description, length: { in: 1..500 }
  validates :price, numericality: { greater_than: 0 }
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :images

  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end
end

