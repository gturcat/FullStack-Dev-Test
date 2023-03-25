require "test_helper"

class PvmesDeclarationTest < ActiveSupport::TestCase
   def setup
    @declaration = pvmes_declarations(:pvmes_declaration_1)
  end

  test "declaration should be valid" do
    assert @declaration.valid?
  end

  test "compagny_siren should be present" do
    @declaration.compagny_siren = " "
    assert_not @declaration.valid?
  end

  test "compagny_name should be present" do
    @declaration.compagny_name = " "
    assert_not @declaration.valid?
  end

  test "adress should be present" do
    @declaration.adress = " "
    assert_not @declaration.valid?
  end

  test "customer_name should be present" do
    @declaration.customer_name = " "
    assert_not @declaration.valid?
  end

  test "customer_email should be present" do
    @declaration.customer_email = " "
    assert_not @declaration.valid?
  end

  test "customer_phone should be present" do
    @declaration.customer_phone = " "
    assert_not @declaration.valid?
  end

  test "should have many panels" do
    assert_respond_to @declaration, :panels
  end

  test "should accept nested attributes for panels" do
    assert_respond_to @declaration, :panels_attributes=
  end
end

