require "spec_helper"

describe Admin::DashboardController do
  describe "GET index" do
    get :index
    expect(response).to render_template("index")
  end
end
