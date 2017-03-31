require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "db schema" do
    context "columns" do
      it { is_expected.to have_db_column(:name).of_type(:string) }
      it { is_expected.to have_db_column(:desc).of_type(:text) }
    end
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "associations" do
    it { is_expected.to have_many(:products) }
  end
end
