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
 describe "GET #index" do
    before do
      res=double
      stub=stub_request(:get, "http://localhost:5050/students").
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
describe "GET #showstudent" do
    before do
      res=double
      stub=stub_request(:get, "http://localhost:5050/students/1").
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
describe 'POST /student' do
  before do
      res=double
      stub=stub_request(:post, "http://localhost:5050/students").
      with(
        body: "{\"name\":\"testname\",\"contact\":\"00000000\",\"email\":\"testemail@g.c\",\"department\":\"tesingpoststudent\",\"course\":\"testingpoststudent\"}",
        headers: {
        'Accept'=>'application/json',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v1.4.2'
        })
        post:create,params: {student: {
                      name:"testname",
                      contact:"00000000",
                      email:"testemail@g.c",
                      department:"tesingpoststudent",
                      course:"testingpoststudent"}
                  }
        res=stub
        response=res
    end
    scenario 'valid department attributes' do
        # response should have HTTP Status 201 Created
        expect(response.status).to eq(201)
    end
end
describe 'PUT /student' do
  before do
      res=double
      stub= stub_request(:put, "http://localhost:5050/students/1").
      with(
        body: "{\"name\":\"testname\",\"contact\":\"00000000\",\"email\":\"testemail@g.c\",\"department\":\"tesingpoststudent\",\"course\":\"testingpoststudent\"}",
        headers: {
        'Accept'=>'application/json',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v1.4.2'
        })
        put:update,params: { id: 1,student: {
          name:"testname",
          contact:"00000000",
          email:"testemail@g.c",
          department:"tesingpoststudent",
          course:"testingpoststudent"}
        }
      
      
        res=stub
        response=res
    end
    scenario 'valid department attributes' do
        # response should have HTTP Status 201 Created
        expect(response.status).to eq(201)
    end
end
describe 'delete /dept' do
  before do
      res=double
      stub=stub_request(:delete, "http://localhost:5050/students/1").
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
end