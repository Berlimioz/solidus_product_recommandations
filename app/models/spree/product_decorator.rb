Spree::Product.class_eval do
  has_many :product_recommendations, inverse_of: :product

end

