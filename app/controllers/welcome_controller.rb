class WelcomeController < ApplicationController
  @@download_count = 0

  respond_to :json, :html
  
  def index
    respond_to do |f|
      f.json { render json: { download_count: @@download_count } }
      f.html
    end
  end
  
  def download
    @@download_count += 1
    respond_to do |f|
      f.json { render json: { download_count: @@download_count } }
      f.html
    end
  end
end
