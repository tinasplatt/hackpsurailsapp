require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post :create, registration: { age: @registration.age, diet_restrictions: @registration.diet_restrictions, email: @registration.email, first_hackathon: @registration.first_hackathon, first_name: @registration.first_name, gender: @registration.gender, graduation_year: @registration.graduation_year, last_name: @registration.last_name, major: @registration.major, phone: @registration.phone, race: @registration.race, resume: @registration.resume, school: @registration.school, shirt_size: @registration.shirt_size, shirt_style: @registration.shirt_style, technical_skills: @registration.technical_skills, travel_reimbursement: @registration.travel_reimbursement, zipcode: @registration.zipcode }
    end

    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should show registration" do
    get :show, id: @registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration
    assert_response :success
  end

  test "should update registration" do
    patch :update, id: @registration, registration: { age: @registration.age, diet_restrictions: @registration.diet_restrictions, email: @registration.email, first_hackathon: @registration.first_hackathon, first_name: @registration.first_name, gender: @registration.gender, graduation_year: @registration.graduation_year, last_name: @registration.last_name, major: @registration.major, phone: @registration.phone, race: @registration.race, resume: @registration.resume, school: @registration.school, shirt_size: @registration.shirt_size, shirt_style: @registration.shirt_style, technical_skills: @registration.technical_skills, travel_reimbursement: @registration.travel_reimbursement, zipcode: @registration.zipcode }
    assert_redirected_to registration_path(assigns(:registration))
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete :destroy, id: @registration
    end

    assert_redirected_to registrations_path
  end
end
