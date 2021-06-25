require 'rails_helper'
RSpec.describe CourseController do
  # describe "GET #index" do
  #   before do
  #     get :index
  #   end
  #   it "returns http success" do
  #     expect(response).to have_http_status(:success)
  #   end
  describe "GET #index" do
    it "returns http success" do
        stub_request(:get, "http://localhost:4000/courses").
              with(
                headers: {
                'Accept'=>'application/json',
                'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                'Content-Type'=>'application/json',
                'User-Agent'=>'Faraday v1.4.2'
                }).
              to_return(status: 200, body: "", headers: {})
    end
   end
   describe "GET #show" do
    it "returns http success" do
        stub_request(:get, "http://localhost:4000/courses/1").
              with(
                headers: {
                'Accept'=>'application/json',
                'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                'Content-Type'=>'application/json',
                'User-Agent'=>'Faraday v1.4.2'
                }).
              to_return(status: 200, body: "", headers: {})
    end
   end
  #  describe 'POST /course' do
  #   before do
  #       post:create,params: {
  #           course: {
  #             name:"testcourse",
  #             department:"tesingpostcourse"
  #           }
  #         }
  #     end
  #     scenario 'valid department attributes' do
  #       # response should have HTTP Status 201 Created
  #       expect(response.status).to eq(201)
  #     end
  #   end
  describe 'Post/cousre' do
    it "returns http success" do
      stub_request(:post, "http://localhost:4000/courses").
          with(
            body: "{\"name\":\"testcourse\",\"department\":\"tesingpostcourse\"}",
            headers: {
            'Accept'=>'application/json',
            'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'Content-Type'=>'application/json',
            'User-Agent'=>'Faraday v1.4.2'
            }).
          to_return(status: 200, body: "", headers: {})
    end
  end
  describe 'Put/cousre' do
    it "returns http success" do
      stub_request(:post, "http://localhost:4000/courses/1").
          with(
            body: "{\"name\":\"testcourse\",\"department\":\"tesingpostcourse\"}",
            headers: {
            'Accept'=>'application/json',
            'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
            'Content-Type'=>'application/json',
            'User-Agent'=>'Faraday v1.4.2'
            }).
          to_return(status: 200, body: "", headers: {})
    end
  end

  describe "delete" do
    it "returns http success" do
        stub_request(:delete, "http://localhost:4000/courses/1").
              with(
                headers: {
                'Accept'=>'application/json',
                'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
                'Content-Type'=>'application/json',
                'User-Agent'=>'Faraday v1.4.2'
                }).
              to_return(status: 200, body: "", headers: {})
    end
   end

end