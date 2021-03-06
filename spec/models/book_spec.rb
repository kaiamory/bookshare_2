require "rails_helper"

RSpec.describe Book, type: :model do
  describe "Direct Associations" do
    it { should have_many(:reviews) }

    it { should have_many(:author_writers) }
  end

  describe "InDirect Associations" do
    it { should have_many(:user_readers) }

    it { should have_many(:users) }
  end

  describe "Validations" do
  end
end
