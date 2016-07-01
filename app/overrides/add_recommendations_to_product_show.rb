Deface::Override.new(:virtual_path => "spree/products/show",
                     :name => "product_recommendations",
                     :insert_bottom => "[data-hook='promotions']",
                     :partial => "spree/products/product_recommendations",
                     :disabled => false,
                     :namespaced => true)
