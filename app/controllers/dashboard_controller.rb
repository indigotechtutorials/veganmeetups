class DashboardController < ApplicationController
  def show
    @meetups = Meetup.all
  end
end
