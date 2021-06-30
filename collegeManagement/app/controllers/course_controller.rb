class CourseController < ApplicationController
    before_action :set_conn
    before_action :set_course_id
    skip_before_action :verify_authenticity_token
    # GET /courses
  def index
    response = @conn.get "/courses"
    @courses = response.body

    render json: @courses, status:200
  end
  def show
    response = @conn.get "/courses/"+@course_id
    @course = response.body
    render json: @course, status:200
  end
  def create
    response = @conn.post "/courses",course_params.to_json
    
    if (response)
      @course = response.body
      render json: @course, status:201
    else
      render status: 422
    end
end
def update
  response = @conn.put "/courses/"+@course_id, course_params.to_json
  if (response)
    @course = response.body
    render json: @course,status:201
  else
    render status: :unprocessable_entity
  end
end
def destroy
  response = @conn.delete "/courses/"+@course_id
  render json:'deleted',status:200
end
    
private
def course_params
  params.require(:course).permit(:name, :department)
end
def set_course_id
    @course_id  = params[:id]
end
def set_conn
        @conn = Faraday.new(
            url: 'http://localhost:4000',
            headers: {'Content-Type' => 'application/json', 'Accept' => 'application/json'}
        )
        
end
end
