require_relative '../../lib/int_2_number'

class Int2numberController < ApplicationController
  
  def convert
    converter = Int2Number.new
    @converted = converter.as_number(params['number'].to_i)
  end
  
  def show
    
  end
end
