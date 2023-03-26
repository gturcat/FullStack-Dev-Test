require 'test_helper'

class Api::V1::PvmesDeclarationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pvmes_declaration = pvmes_declarations(:pvmes_declaration_1)
    @panel = panels(:one)
    @pvmes_declaration.panels << @panel
  end

  test "should get index" do
    get api_v1_pvmes_declarations_url
    assert_response :success
  end

  test "should show pvmes_declaration" do
    get api_v1_pvmes_declaration_url(@pvmes_declaration)
    assert_response :success
  end

  test "should create pvmes_declaration" do
      post api_v1_pvmes_declarations_url, params: { pvmes_declaration: {
        compagny_name: @pvmes_declaration.compagny_name,
        compagny_siren: @pvmes_declaration.compagny_siren,
        customer_name: @pvmes_declaration.customer_name,
        customer_email: @pvmes_declaration.customer_email,
        customer_phone: @pvmes_declaration.customer_phone,
        adress: @pvmes_declaration.adress,
        date_of_installation: @pvmes_declaration.date_of_installation,
        panels_attributes: [
          type_of_panel: @pvmes_declaration.panels.first.type_of_panel,
          code: @pvmes_declaration.panels.first.code
        ]
      } }
    assert_response :created
  end

  test "should not create pvmes_declaration without required parameters" do
      post api_v1_pvmes_declarations_url, params: { pvmes_declaration: {
        compagny_name: nil,
        compagny_siren: @pvmes_declaration.compagny_siren,
        customer_name: @pvmes_declaration.customer_name,
        customer_email: @pvmes_declaration.customer_email,
        customer_phone: @pvmes_declaration.customer_phone,
        adress: @pvmes_declaration.adress,
        date_of_installation: @pvmes_declaration.date_of_installation,
        panels_attributes: [
          type_of_panel: @pvmes_declaration.panels.first.type_of_panel,
          code: @pvmes_declaration.panels.first.code
        ]
      } }
    assert_response :unprocessable_entity
  end
end
