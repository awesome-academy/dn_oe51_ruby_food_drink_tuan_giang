Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    get "static_pages/home"
    get "static_pages/shop"
    get "static_pages/about"
    get "static_pages/contact"
    get "static_pages/cart"
  end
end
