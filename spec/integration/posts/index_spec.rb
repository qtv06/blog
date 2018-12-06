require "swagger_helper"

describe "Post Api" do
  path "/api/v1/posts" do
    post "index a pot" do
      tags "Potss"
      consumes "application/json"

      parameter name: :Authorization, in: :header, required: true,
        description: "Bearer d8fd4012b7c907bf3af79323cddffb618f761e4c3716ea5b5af5f6e9d9290cfc"

      response '200', 'Authentication Successfully' do
        schema type: :object, properties: {
          posts: {
            type: :object,
            properties: {
              data: [
                {
                  id: {type: :integer, description: "Post Id"},
                  title: {type: :string, description: "Post Title"},
                  content: {type: :string, description: "Post content"},
                }
              ]
            }
          },
          status: {type: :integer}
        }
        examples "application/json" => {
          posts: {
            data: [
              {
                id: 1,
                title: "Design partent in rails",
                content: "Some thing content"
              },
              {
                id: 2,
                title: "Guide ruby on rails",
                content: "Some thing content"
              }
            ]
          },
          status: 200
        }
        run_test!
      end

    end
  end
end
