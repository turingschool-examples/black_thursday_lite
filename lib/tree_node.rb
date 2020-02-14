class TreeNode
  attr_reader :value,
              :left,
              :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def add(new_value)
    if new_value > @value
      if !@right.nil?
        @right.add(new_value)
      else
        @right = TreeNode.new(new_value)
        true
      end
    elsif new_value < @value
      if !@left.nil?
        @left.add(new_value)
      else
        @left = TreeNode.new(new_value)
        true
      end
    elsif new_value == @value
      false
    end
  end
end
