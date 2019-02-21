class SessionsController < ApplicationController

  def new

  end

  def create

    session[:name] = params[:name] if params[:name]

    if params[:name] == nil

        redirect_to sessions_new_path
      elsif params[:name] == ""

        redirect_to sessions_new_path
      else
        redirect_to root_path
    end

  end

  def destroy

    if !session[:name]
      session[:name] == nil

      redirect_to login_path
    else
      session.delete :name

      redirect_to login_path
    end

  end

end
