require 'test_helper'

class HuntersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hunter = hunters(:one)
  end

  test "should get index" do
    get hunters_url, as: :json
    assert_response :success
  end

  test "should create hunter" do
    assert_difference('Hunter.count') do
      post hunters_url, params: { hunter: { cnpj: @hunter.cnpj, description: @hunter.description, link1: @hunter.link1, name: @hunter.name, phone: @hunter.phone } }, as: :json
    end

    assert_response 201
  end

  test "should show hunter" do
    get hunter_url(@hunter), as: :json
    assert_response :success
  end

  test "should update hunter" do
    patch hunter_url(@hunter), params: { hunter: { cnpj: @hunter.cnpj, description: @hunter.description, link1: @hunter.link1, name: @hunter.name, phone: @hunter.phone } }, as: :json
    assert_response 200
  end

  test "should destroy hunter" do
    assert_difference('Hunter.count', -1) do
      delete hunter_url(@hunter), as: :json
    end

    assert_response 204
  end
end
