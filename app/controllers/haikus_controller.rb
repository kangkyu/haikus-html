class HaikusController < ApplicationController
  def index
    @haikus = HaikusApi.list_haikus
  end
end
