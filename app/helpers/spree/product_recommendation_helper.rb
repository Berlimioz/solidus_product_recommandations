module Spree::ProductRecommendationHelper

  def scoring_types_list
    SolidusProductRecommendations.config[:scoring_types].map{|scoring_type| [Spree.t("product_recommendation.scoring_types.#{scoring_type}"), scoring_type]}
  end

end
