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
  describe "GET #index" do
    before do
      res=double
      stub=stub_request(:get, "http://localhost:4000/courses").
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
  describe "GET #showcourse" do
    before do
      res=double
      stub=stub_request(:get, "http://localhost:4000/courses/1").
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
  describe 'Post/course' do
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
  describe 'POST /course' do
    before do
        res=double
        stub=stub_request(:post, "http://localhost:4000/courses").
        with(
          body: "{\"name\":\"testcourse\",\"department\":\"testingpostcourse\"}",
          headers: {
         'Accept'=>'application/json',
         'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
         'Content-Type'=>'application/json',
         'User-Agent'=>'Faraday v1.4.2'
          })
          post:create,params: {course: {
                        name:"testcourse",
                        department:"testingpostcourse"
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
  
  describe 'Put/course' do
    it "returns http success" do
      stub_request(:put, "http://localhost:4000/courses/1").
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
  describe 'PUT /course' do
    before do
        res=double
        stub= stub_request(:put, "http://localhost:4000/courses/1").
        with(
          body: "{\"name\":\"testcourse\",\"department\":\"testingpostcourse\"}",
          headers: {
         'Accept'=>'application/json',
         'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
         'Content-Type'=>'application/json',
         'User-Agent'=>'Faraday v1.4.2'
          })
          put:update,params: { id: 1,course: {
            name:"testcourse",
            department:"testingpostcourse"
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
   describe 'delete /dept' do
    before do
        res=double
        stub=stub_request(:delete, "http://localhost:4000/courses/1").
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