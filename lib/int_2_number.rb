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
      ones = get_ones(int_number)
      TENS[int_number/10 - 2] + ones
    end
  end

  private

  def get_ones(number)
    residuum = number % 10
    residuum == 0 ? '' : NUMBERS[residuum]
  end

end