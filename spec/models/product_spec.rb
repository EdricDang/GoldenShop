require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "db schema" do
    context "columns" do
      it { should have_db_column(:name).of_type(:string) }
      it { should have_db_column(:image).of_type(:string) }
      it { should have_db_column(:description).of_type(:text) }
      it { should have_db_column(:price).of_type(:integer) }
      it { should have_db_column(:year).of_type(:integer) }
      it { should have_db_column(:category_id).of_type(:string) }
      it { should have_db_column(:user_id).of_type(:string) }
    end
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:price) }
    it { should validate_length_of(:category_id) }
    it { should validate_length_of(:user_id) }
  end

  describe "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:category) }
  end

end
