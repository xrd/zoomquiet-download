class WelcomeController < ApplicationController
  @@download_count = 0

  def index
  end
  
  def add_count
    @@download_count += 1
    render json: { download_count: @@download_count }
  end
end
