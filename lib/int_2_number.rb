class Int2Number

  NUMBERS = ['zero', 'one', 'two', 'three', 'four',
    'five', 'six', 'seven', 'eight', 'nine',
    'ten', 'eleven', 'twelve', 'thirteen', 'fourteen',
    'fifteen', 'sixteen', 'seventeen', 'eighteen','nineteen']

  TENS = ['twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

  def as_number(int_number)

    if int_number > 99
      hundreds(int_number)
    else
      numbers(int_number)
    end
  end

  private

  def numbers(number)
    if number < 20
      NUMBERS[number]
    else
      ones = get_ones(number)
      TENS[number/10 - 2] + ones
    end
  end

  def hundreds(number)
    hundreds = number / 100
    if numbers(number % 100) != 'zero'
      ones = ' and ' + numbers(number % 100)
    else
      ones = ''
    end
    numbers(hundreds) + ' hundred' + ones
  end

  def get_ones(number)
    residuum = number % 10
    residuum == 0 ? '' : NUMBERS[residuum]
  end

end