
require 'rails_helper'

RSpec.describe DepartmentController do
  #testing get api to return a success status
describe "GET #index" do
  it "returns http success" do
    stub=stub_request(:get, "http://localhost:5000/departments").
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
describe "GET #index" do
  before do
    res=double
    stub=stub_request(:get, "http://localhost:5000/departments").
      with(
        headers: {
      'Accept'=>'application/json',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'Content-Type'=>'application/json',
      'User-Agent'=>'Faraday v1.4.2'
        })
        res=stub
    get :index
    response=res
  end
  it "returns http success" do
    expect(response).to have_http_status(:success)
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
describe 'POST /dept' do
  before do
      res=double
      stub=stub_request(:post, "http://localhost:5000/departments").
      with(
        body: "{\"name\":\"testdepartment\"}",
        headers: {
        'Accept'=>'application/json',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v1.4.2'
        })
        post:create,params: {
                    department: {
                      name:"testdepartment"
                    }
                  }
        res=stub
        response=res
    end
    scenario 'valid department attributes' do
        # response should have HTTP Status 201 Created
        expect(response.status).to eq(201)
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
describe "GET #show" do
 before do
  res=double
  stub=stub_request(:get, "http://localhost:5000/departments/1").
  with(
    headers: {
   'Accept'=>'application/json',
   'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
   'Content-Type'=>'application/json',
   'User-Agent'=>'Faraday v1.4.2'
    })
      res=stub
   get :show,params:{id: 1}
  response=res
 end
 it "returns http success" do
   expect(response).to have_http_status(:success)
 end
end
#   #testing put api to return a success status
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
describe 'PUT /dept' do
  before do
      res=double
      stub=stub_request(:put, "http://localhost:5000/departments/1").
      with(
        body: "{\"name\":\"testdepartment\"}",
        headers: {
        'Accept'=>'application/json',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v1.4.2'
        })
        put:update,params: { id: 1,
                    department: {
                      name:"testdepartment"
                    }
                  }
        res=stub
        response=res
    end
    scenario 'valid department attributes' do
        # response should have HTTP Status 201 Created
        expect(response.status).to eq(201)
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
describe 'delete /dept' do
    before do
        res=double
        stub=stub_request(:delete, "http://localhost:5000/departments/1").
        with(
          headers: {
        'Accept'=>'application/json',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v1.4.2'
          })
          delete:destroy,params:{id: 1}
          res=stub
          response=res
          # print response.status
      end
     it 'valid department attributes' do
          # response should have HTTP Status 201 Created
          print response.status
          expect(response).to have_http_status(:success)
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
