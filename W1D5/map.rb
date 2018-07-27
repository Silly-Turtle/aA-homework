class Map
  def initialize
    @key_value_holder = []
  end

  def set(key, value)
    key_value_holder.each do |pair|
      if pair[0] == key
        pair[1] = value
        return value
      end
    end
    key_value_holder.push([key, value])
    value
  end

  def get(key)
    key_value_holder.each { |subarray| return subarray[1] if subarray[0] == key}
    nil
  end

  def delete(key)
    key_value_holder.each_with_index do |subarray, i|
      if subarray[i][0] == key
        key_value_holder = key_value_holder[0...i] + key_value_holder[(i + 1)..-1]
        return subarray[i][1]
      end
    end
    nil
  end

  def show
    key_value_holder
  end

  attr_reader :key_value_holder

end
