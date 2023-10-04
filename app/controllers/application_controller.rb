class ApplicationController < ActionController::API

  def reset_database
    if params[:secret_key] == "borarbasededatos123"
      system("rails db:reset")
      render json: { message: "Database resetted successfully" }
    else
      render json: { message: "Unauthorized" }, status: :unauthorized
    end
  end
end
