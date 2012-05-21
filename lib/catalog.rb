class Catalog
  attr_reader :things

  def initialize(things, without = nil)
    @things = things - Array(without)
  end

  def each(&block)
    @things.each(&block)
  end
end
