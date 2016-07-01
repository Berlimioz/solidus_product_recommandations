class RenameSourceInRecommendationSource < ActiveRecord::Migration
  def change
    rename_column :spree_product_recommendations, :source, :recommendation_source
  end
end
