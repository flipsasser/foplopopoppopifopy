class Oppificator

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def opoppopexop
    '([a-z&&[^aeiouy]])'
  end

  def oppify
    input.gsub(/#{opoppopexop}/i, '\1op')
  end

  def deoppify
    input.gsub(/#{opoppopexop}op/i, '\1')
  end

end

