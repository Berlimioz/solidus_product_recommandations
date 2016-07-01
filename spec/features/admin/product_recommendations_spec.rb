require 'spec_helper'

RSpec.feature 'Product recommendations' do
  let!(:product) { create(:product) }

  before :each do
    login_as_admin
  end

  it "adding comments" do
    visit spree.admin_product_product_recommendations_path(product)
    expect(page).to have_text(Spree.t('admin.product_recommendations.product_recommendations_table.none'))

    click_link Spree.t('new_product_recommendation')

    expect(page).to have_text(Spree.t('new_product_recommendation'))

    params_hash = {
      recommendation_source: "Vignerons independants",
      comment_title: "Vignerons independants - Guide 2016",
      comment: "Ceci est un commentaire très important pour expliquer à quel point ce vin est fantastique et merveilleux.",
      scoring_value: "89/100"
    }
    scoring_type = :mark_over

    params_hash.each do |key, val|
      fill_in "product_recommendation_#{key}", with: val
    end

    page.select Spree.t("product_recommendation.scoring_types.#{scoring_type}"), from: :product_recommendation_scoring_type

    page.find('button[type=submit]').click

    params_hash.values.each do |val|
      expect(page).to have_text(val)
    end

    expect(page).to have_text(Spree.t("product_recommendation.scoring_types.#{scoring_type}"))
  end
end
