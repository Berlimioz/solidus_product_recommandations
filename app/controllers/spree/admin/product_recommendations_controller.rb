class Spree::Admin::ProductRecommendationsController < Spree::Admin::ResourceController
  helper 'spree/product_recommendation'
  belongs_to 'spree/product', model_class: Spree::Product, find_by: :slug

  private
  def permitted_resource_params
    params.permit(product_recommendation: [:recommendation_source, :comment_title, :comment, :scoring_type, :scoring_value])[:product_recommendation]
  end

end
