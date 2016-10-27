require 'test_helper'

module ModelGen
  class EntitiesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get new" do
      get entities_new_url
      assert_response :success
    end

  end
end
