require 'rails_helper'

RSpec.describe LineItem, type: :model do
  describe "db schema" do
    context "columns" do
      it { is_expected.to have_db_column(:product_id).of_type(:integer) }
      it { is_expected.to have_db_column(:cart_id).of_type(:integer) }
    end
  end

  describe "validations" do
  end

end
