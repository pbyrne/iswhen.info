class IphoneController < ApplicationController
  def index
    @catalog = Catalog.new Event.with_observances
  end
end
