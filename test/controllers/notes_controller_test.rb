require 'test_helper'

class NotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get notes_index_url
    assert_response :success
  end

end
