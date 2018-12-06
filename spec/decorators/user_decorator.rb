require "rails_helper"

RSpec.describe UserDecorator do
  let!(:user) do
    build_stubbed(:user, created_at: Date.new(2018, 11, 16)).decorate
  end

  describe "#created_at" do
    it {expect(user.created_at).to eq "<span class=\"time\">Fri 11/16/18</span>"}
  end

  describe "#full_name" do
    it {expect(user.full_name).to eq "#{user.last_name} - #{user.first_name}"}
  end

  describe "#label_role_class" do
    context "when user is member" do
      it {expect(user.label_role_class).to eq "primary"}
    end

    context "when user is admin" do
      let(:user_admin) do
        build_stubbed(:user, role: :admin).decorate
      end
      it {expect(user_admin.label_role_class).to eq "success"}
    end
  end
end
