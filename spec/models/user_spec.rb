require 'spec_helper'

describe User do
  it "will not allow creation without a username" do
    user = FactoryGirl.build :user, username: nil
    expect(user.save).to eq(false)
  end
end
