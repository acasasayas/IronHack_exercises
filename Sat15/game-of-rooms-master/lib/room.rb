class Room
  attr_accessor(:text)

  def initialize(options)
    @text = options[:text]
    @end = options[:end]
  end

  def end?
    return @end
  end
end
