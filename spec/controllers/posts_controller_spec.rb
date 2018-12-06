require "rails_helper"

RSpec.describe PostsController, type: :controller do
  describe "GET #index" do
    let!(:post) {FactoryBot.create :post}
    before {get :index}
    context "when load post success" do
      before {allow(Post).to receive(:all).and_return post}
      it {expect(response.status).to eq 200}
      it {expect(response_json["posts"]["data"].first["id"]).to eq post.id.to_s}
    end
  end
end
