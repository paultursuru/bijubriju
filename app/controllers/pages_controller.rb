class PagesController < ApplicationController
  skip_before_action :authenticate_admin!

  def home
  end

  def contact
  end
end
