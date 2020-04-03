class FormatOutput
  
  attr_reader :label, :numbers

  def initialize(label, numbers = [])
    @label = label
    @numbers = numbers
  end

  def format_sequence
    "#{label}: #{remove_commas}\n"
  end

  private
  
  def remove_commas
    @numbers.join(' ')
  end

end