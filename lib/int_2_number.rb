class Int2Number 
  
  NUMBERS = ['zero', 'one', 'two', 'three', 'four', 
             'five', 'six', 'seven', 'eight', 'nine',
             'ten', 'eleven', 'twelve', 'thirteen', 'fourteen',
             'fifteen', 'sixteen', 'seventeen', 'eighteen','nineteen']
  
  def as_number(int_number)
      NUMBERS[int_number]
  end
end