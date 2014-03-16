class IndexController < ApplicationController
  def index
  end

  def error
    Rails.what_now_errors
  end
end
