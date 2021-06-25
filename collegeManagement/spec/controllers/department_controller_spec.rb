
require 'rails_helper'

RSpec.describe DepartmentController do
  #testing get api to return a success status
  describe "GET #index" do
  it "returns http success" do
    stub_request(:get, "http://localhost:5000/departments").
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
  #testing post api to return a success status
 describe 'Post/department' do
  it "returns http success" do
    stub_request(:post, "http://localhost:5000/departments").
        with(
          body: "{\"name\":\"testdepartment\"}",
          headers: {
          'Accept'=>'application/json',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'Content-Type'=>'application/json',
          'User-Agent'=>'Faraday v1.4.2'
          }).
        to_return(status: 200, body: "", headers: {})
  end
end
 #testing nested get api to return a success status
describe "GET #show" do
  it "returns http success" do
    stub_request(:get, "http://localhost:5000/departments/1").
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
  #testing put api to return a success status
 describe 'Put/department' do
  it "returns http success" do
    stub_request(:put, "http://localhost:5000/departments/1").
        with(
          body: "{\"name\":\"testdepartment\"}",
          headers: {
          'Accept'=>'application/json',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'Content-Type'=>'application/json',
          'User-Agent'=>'Faraday v1.4.2'
          }).
        to_return(status: 200, body: "", headers: {})
  end
end
 #testing delete api to return a success status
  describe "delete department" do
    it "returns http success" do
      stub_request(:delete, "http://localhost:5000/departments/1").
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
   #testing get api to return a failed status
  describe "GET #index" do
  it "returns http failure" do
    stub_request(:get, "http://localhost:5000/departments").
    with(
      headers: {
     'Accept'=>'application/json',
     'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
     'Content-Type'=>'application/json',
     'User-Agent'=>'Faraday v1.4.2'
      }).
    to_return(status: :unprocessable_entity, body: "", headers: {})
  end
 end
 #testing get api to return a failed status
 describe "GET #show" do
  it "returns http faliure" do
    stub_request(:get, "http://localhost:5000/departments/10").
    with(
      headers: {
     'Accept'=>'application/json',
     'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
     'Content-Type'=>'application/json',
     'User-Agent'=>'Faraday v1.4.2'
      }).
    to_return(status: :unprocessable_entity, body: "", headers: {})
  end
 end
 #testing post api to return a failed status
 describe 'Post/department' do
  it "returns unprocessable entity" do
    stub_request(:post, "http://localhost:5000/departments").
        with(
          body: "{\"name\":\"\"}",
          headers: {
          'Accept'=>'application/json',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'Content-Type'=>'application/json',
          'User-Agent'=>'Faraday v1.4.2'
          }).
        to_return(status: :unprocessable_entity, body: "", headers: {})
  end
end
#testing put api to return a failed status
describe 'Put/department' do
  it "returns failed" do
    stub_request(:put, "http://localhost:5000/departments/19").
        with(
          body: "{\"name\":\"\"}",
          headers: {
          'Accept'=>'application/json',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'Content-Type'=>'application/json',
          'User-Agent'=>'Faraday v1.4.2'
          }).
        to_return(status: :unprocessable_entity, body: "", headers: {})
  end
end
describe "delete department" do
  it "returns http failed" do
    stub_request(:delete, "http://localhost:5000/departments/19").
    with(
      headers: {
    'Accept'=>'application/json',
    'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    'Content-Type'=>'application/json',
    'User-Agent'=>'Faraday v1.4.2'
      }).
    to_return(status: :unprocessable_entity, body: "", headers: {})
  end
end
  

end
