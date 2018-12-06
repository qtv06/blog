require "rails_helper"

RSpec.describe Post, type: :model do
  context "column" do
    it {expect have_many(:comment)}
  end
end
