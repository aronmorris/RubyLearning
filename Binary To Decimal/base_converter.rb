class BaseConverter
  # convert TO base-2
  def to_binary(val)
    return val.to_s(2)
  end
  # convert FROM base-2 (thanks ruby?)
  def to_decimal(val)
    return val.to_i(2)
  end
end

c = BaseConverter.new

puts c.to_binary(100)

puts c.to_decimal(c.to_binary(100))