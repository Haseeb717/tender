require 'test_helper'

class TendersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tender = tenders(:one)
  end

  test "should get index" do
    get tenders_url
    assert_response :success
  end

  test "should get new" do
    get new_tender_url
    assert_response :success
  end

  test "should create tender" do
    assert_difference('Tender.count') do
      post tenders_url, params: { tender: { bid_expiry_date: @tender.bid_expiry_date, bid_start_date: @tender.bid_start_date, category_id: @tender.category_id, company_address: @tender.company_address, company_city: @tender.company_city, company_name: @tender.company_name, company_phone: @tender.company_phone, company_regitration_number: @tender.company_regitration_number, contact_address: @tender.contact_address, contact_phone: @tender.contact_phone, description: @tender.description, name: @tender.name, phone_fax: @tender.phone_fax, project_completion_date: @tender.project_completion_date, project_location_city: @tender.project_location_city, project_location_country: @tender.project_location_country, project_start_date: @tender.project_start_date, scope_of_work: @tender.scope_of_work, user_id: @tender.user_id } }
    end

    assert_redirected_to tender_url(Tender.last)
  end

  test "should show tender" do
    get tender_url(@tender)
    assert_response :success
  end

  test "should get edit" do
    get edit_tender_url(@tender)
    assert_response :success
  end

  test "should update tender" do
    patch tender_url(@tender), params: { tender: { bid_expiry_date: @tender.bid_expiry_date, bid_start_date: @tender.bid_start_date, category_id: @tender.category_id, company_address: @tender.company_address, company_city: @tender.company_city, company_name: @tender.company_name, company_phone: @tender.company_phone, company_regitration_number: @tender.company_regitration_number, contact_address: @tender.contact_address, contact_phone: @tender.contact_phone, description: @tender.description, name: @tender.name, phone_fax: @tender.phone_fax, project_completion_date: @tender.project_completion_date, project_location_city: @tender.project_location_city, project_location_country: @tender.project_location_country, project_start_date: @tender.project_start_date, scope_of_work: @tender.scope_of_work, user_id: @tender.user_id } }
    assert_redirected_to tender_url(@tender)
  end

  test "should destroy tender" do
    assert_difference('Tender.count', -1) do
      delete tender_url(@tender)
    end

    assert_redirected_to tenders_url
  end
end
