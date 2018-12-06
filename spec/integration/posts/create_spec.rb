require "swagger_helper"

describe "Post Api" do
  path "/api/v1/posts" do
    post "create a pot" do
      tags "Posts"
      consumes "application/json"
      parameter name: :post, in: :body, schema: {
        type: :object,
        properties: {
          title: {type: :string},
          content: {type: :string},
          published: {type: :string}
        }
      }

      response '201', 'post create' do
        let(:post) {{title: "New Post", content: "Lorem for test", published: true}}
        run_test!
      end
    end
  end
end
