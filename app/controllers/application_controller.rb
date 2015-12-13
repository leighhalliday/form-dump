class ApplicationController < ActionController::Base
  def dump
    show_params = params.reject{|key, value| ["controller", "action"].include?(key.to_s)}
    render json: show_params.to_json
  end
end
