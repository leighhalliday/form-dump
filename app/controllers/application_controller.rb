class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def dump
    show_params = params.reject{|key, value| ["controller", "action"].include?(key.to_s)}
    render json: show_params.to_json
  end
end
