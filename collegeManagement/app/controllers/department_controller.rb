class DepartmentController < ApplicationController
    before_action :set_conn
    before_action :set_department_id
    skip_before_action :verify_authenticity_token
    # GET /departments
  def index
    response = @conn.get "/departments"
    @departments = response.body
    if (@departments)
      render json: @departments, status:200
    else
      render status: :unprocessable_entity
    end
  end
  def show
    response = @conn.get "/departments/"+@department_id
    
    @department = response.body
    if (@department)
      render json: @department, status:200
    else
      render status: :unprocessable_entity
    end
  end
  def create
    response = @conn.post "/departments",department_params.to_json
    if (response)
      @department = response.body
      render json: @department,status:201
    else
      # failed="name can't be blank"
      render status:422
    end
end
def update
  response = @conn.put "/departments/"+@department_id, department_params.to_json
  if success(response)
    @department = response.body
    render json: @department,status:201
  else
    render status:422
  end

end
def destroy
  response = @conn.delete "/departments/"+@department_id
  success="deleted"
  render status: :ok
end
private    
def department_params
  params.require(:department).permit(:name)
end
def set_department_id
    @department_id  = params[:id]
end
def set_conn
        @conn = Faraday.new(
            url: 'http://localhost:5000',
            headers: {'Content-Type' => 'application/json', 'Accept' => 'application/json'}
        )
        
end
end


