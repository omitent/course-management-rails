class StudentController < ApplicationController
    before_action :set_conn
    before_action :set_student_id
    skip_before_action :verify_authenticity_token
    # GET /students
  def index
    response = @conn.get "/students"
    @students = response.body

    render json: @students, status:200
  end
  def show
    response = @conn.get "/students/"+@student_id
    @student = response.body
    render json: @student, status:200
  end
  def create
    response = @conn.post "/students",student_params.to_json
    if response
      @student = response.body
      render json: @student,status:201
    else
      render status:422
    end
end
def update
  response = @conn.put "/students/"+@student_id, student_params.to_json
  if response
    @student = response.body
    render json: @student,status:200
  else
    render status: :unprocessable_entity
  end
end
def destroy
  response = @conn.delete "/students/"+@student_id
  success="deleted"
  render status: :ok
end
    
    
  private
  def student_params
    params.require(:student).permit(:name, :contact, :email, :department, :course)
  end  
  def set_student_id
    @student_id  = params[:id]
  end
    def set_conn
        @conn = Faraday.new(
            url: 'http://localhost:5050',
            headers: {'Content-Type' => 'application/json', 'Accept' => 'application/json'}
        )
        
    end
end


