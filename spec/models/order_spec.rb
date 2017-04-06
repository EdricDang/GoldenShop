require 'rails_helper'

RSpec.describe Order, type: :model do
  describe "db schema" do
    context "columns" do
      it { is_expected.to have_db_column(:name).of_type(:string) }
      it { is_expected.to have_db_column(:address).of_type(:text) }
      it { is_expected.to have_db_column(:email).of_type(:string) }
      it { is_expected.to have_db_column(:pay_type).of_type(:string) }
      it { is_expected.to have_db_column(:card_token).of_type(:string) }
    end
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:email) }
  end

  describe "associations" do
  end
end
