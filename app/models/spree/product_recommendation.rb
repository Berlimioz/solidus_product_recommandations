class Spree::ProductRecommendation < ActiveRecord::Base
  belongs_to :product, class_name: "Spree::Product"
  validates :product, presence: true
  validates :recommendation_source, presence: true

  def display_scoring_type
    Spree.t("product_recommendation.scoring_types.#{self.scoring_type}") unless self.scoring_type.blank?
  end

end
