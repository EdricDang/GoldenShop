require "rails_helper"

RSpec.describe "routes for Widgets", type: :routing do
  it "routes /products  to the products controller with action index" do
    expect(get("/products")).
      to route_to("products#index")
  end
end