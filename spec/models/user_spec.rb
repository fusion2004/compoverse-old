require "spec_helper"
require "cancan/matchers"

describe User do
  it "will not allow creation without a username" do
    user = FactoryGirl.build(:user, username: nil)
    expect(user.save).to eq(false)
  end

  it "can become an administrator" do
    user = FactoryGirl.create(:user, admin: true)
    ability = Ability.new(user)
    expect(ability).to be_able_to(:manage, :all)
  end
end
