require 'test_helper'

class BookmarkTest < ActiveSupport::TestCase

  test "happy method is happy" do
    bookmark = Bookmark.new
    assert bookmark.happy, 'smile'
  end

  # test "the truth" do
  #   assert true
  # end
end
