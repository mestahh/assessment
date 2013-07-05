class Int2Number 
  
  NUMBERS = ['zero', 'one', 'two', 'three', 'four', 
             'five', 'six', 'seven', 'eight', 'nine',
             'ten', 'eleven', 'twelve', 'thirteen', 'fourteen',
             'fifteen', 'sixteen', 'seventeen', 'eighteen','nineteen']
  
  TENS = ['twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  
  def as_number(int_number)
    if int_number < 20
      NUMBERS[int_number]
    else 
      TENS[int_number/10 - 2]
    end
  end
  
  
end