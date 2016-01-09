class HaikusController < ApplicationController
  def index
    haikus_api = HaikusApi.new('e3fba975f6113fb1a7443b73a125ae63') # temporary
    @haikus = haikus_api.list_haikus
  end
end
