class HomeController < ApplicationController
  def index
  	@tenders = Tender.all
  end

  def live_tenders
  	@tenders = Tender.where('status =?',nil).all
  end
end
