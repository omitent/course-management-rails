require 'rails_helper'
RSpec.describe StudentController do
  # describe "GET #index" do
  #   before do
  #     get :index
  #   end
  #   it "returns http success" do
  #     expect(response).to have_http_status(:success)
  #   end
   
  # end
  describe "GET #index" do
    it "returns http success" do
      stub_request(:get, "http://localhost:5050/students").
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
   describe 'Post/student' do
    it "returns http success" do
      stub_request(:post, "http://localhost:5050/students").
          with(
            body: "{\"name\":\"testname\",\"contact\":\"00000000\",\"email\":\"testemail@g.c\",\"department\":\"tesingpoststudent\",\"course\":\"testingpoststudent\"}",
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
    stub_request(:get, "http://localhost:5050/students/1").
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
 describe 'Put/student' do
  it "returns http success" do
    stub_request(:put, "http://localhost:5050/students/1").
        with(
          body: "{\"name\":\"testname\",\"contact\":\"00000000\",\"email\":\"testemail@g.c\",\"department\":\"tesingpoststudent\",\"course\":\"testingpoststudent\"}",
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
    stub_request(:delete, "http://localhost:5050/students/1").
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