class Int2Number

  NUMBERS = ['zero', 'one', 'two', 'three', 'four',
    'five', 'six', 'seven', 'eight', 'nine',
    'ten', 'eleven', 'twelve', 'thirteen', 'fourteen',
    'fifteen', 'sixteen', 'seventeen', 'eighteen','nineteen']

  TENS = ['twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

  LOTS = { 1000000 => 'million', 1000 => 'thousand', 100 => 'hundred'}

  def as_number(int_number)
    
    number = ''

    if (int_number < 20)
      return  numbers(int_number)
    end

   

    residuum = int_number

    LOTS.keys.each do |key|
      result = residuum / key

      if result >= 1
        if (number != '') 
          number += ' '
        end
        number += as_number(residuum / key) + ' ' + LOTS[key]
        residuum = int_number % key
      end
    end
    
    unless (residuum == 0)
      unless (number == '' )
        number += ' and ' + numbers(residuum)
      else 
        number += numbers(residuum)
      end
    end
    
    return number
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

  # def hundreds(number)
    # hundreds = number / 100
    # if numbers(number % 100) != 'zero'
      # ones = ' and ' + numbers(number % 100)
    # else
      # ones = ''
    # end
    # numbers(hundreds) + ' hundred' + ones
  # end

  def get_ones(number)
    residuum = number % 10
    residuum == 0 ? '' : NUMBERS[residuum]
  end

end