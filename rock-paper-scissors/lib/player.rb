class Player

  attr_reader :name, :shape, :win_count

  def initialize(options={})
    @name       = options.fetch :name, nil
    @win_count  = 0
  end

  def pick(shape)
    @shape = shape
  end

  def win
    @win_count += 1
  end

end









