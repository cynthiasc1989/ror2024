require "test_helper"

class DocumentaryFilmControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get documentary_film_index_url
    assert_response :success
  end

  test "should get new" do
    get documentary_film_new_url
    assert_response :success
  end

  test "should get create" do
    get documentary_film_create_url
    assert_response :success
  end
end
