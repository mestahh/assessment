class Int2Number

  NUMBERS = ['zero', 'one', 'two', 'three', 'four',
    'five', 'six', 'seven', 'eight', 'nine',
    'ten', 'eleven', 'twelve', 'thirteen', 'fourteen',
    'fifteen', 'sixteen', 'seventeen', 'eighteen','nineteen']

  TENS = ['twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

  PLACE_VALUE = { 1000000 => 'million', 1000 => 'thousand', 100 => 'hundred'}

  EMPTY = ''

  def as_number(param_number)

    is_num?(param_number)
    int_number = param_number.to_i
    
    number = EMPTY

    if (number_defined_explicitly(int_number))
      under_hundred(int_number)
    else

      PLACE_VALUE.keys.each do |key|
        result = int_number / key

        if result >= 1
          number = concat(number, as_number(result) + ' ' + PLACE_VALUE[key])
        int_number %= key
        end
      end

      unless (int_number == 0)
        number = concat_and(number, under_hundred(int_number))
      end

    number
    end
  end

  private

  def number_defined_explicitly(number)
    number < 20
  end

  def concat_and(number, add_tag)
    unless (number == EMPTY)
      number += ' and '
    end
    number += add_tag
  end

  def concat(number, add_tag)
    unless (number == EMPTY)
      number += ' '
    end
    number += add_tag
  end

  def under_hundred(number)
    if number < 20
      NUMBERS[number]
    else
      ones = get_ones(number)
      TENS[number/10 - 2] + ones
    end
  end

  def get_ones(number)
    residuum = number % 10
    residuum == 0 ? '' : NUMBERS[residuum]
  end

  def is_num?(str)
    begin
      !!Integer(str)
    rescue ArgumentError, TypeError
      raise 'Parameter must be an int.'
    end
  end

end