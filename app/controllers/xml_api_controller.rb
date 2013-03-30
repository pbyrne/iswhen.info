class XmlApiController < ApplicationController
  def index
    @collection = EventCollector.new
  end
end
