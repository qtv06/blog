require "rails_helper"

RSpec.describe UsersController, type: :controller do
  describe "GET #new" do
    before {get :new}

    it {expect(response).to be_success}
    it {expect(assigns :user).to be_a User}
    it {expect(response).to render_template :new}
  end
end
