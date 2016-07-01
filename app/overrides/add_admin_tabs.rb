Deface::Override.new(:virtual_path => "spree/admin/shared/_product_tabs",
                     :name => "product_recommendations_admin_product_tabs",
                     :insert_bottom => "[data-hook='admin_product_tabs']",
                     :partial => "spree/admin/shared/product_recommendations_product_tabs",
                     :disabled => false,
                     :namespaced => true)
