require "test_helper"

class AuthorizationTest < ActiveSupport::TestCase

  def setup
    @authorization = Authorization.new
  end

  def test_valid
    assert @authorization.valid?
  end

end
