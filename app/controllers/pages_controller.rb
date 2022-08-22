class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def about
    if user_signed_in
      @flats = current_user.flats
    end
  end
end
