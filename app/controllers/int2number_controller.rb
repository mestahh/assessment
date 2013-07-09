require_relative '../../lib/int_2_number'

class Int2numberController < ApplicationController
  
  def convert
    converter = Int2Number.new
    begin
      @converted = converter.as_number(params['number'])
    rescue
      redirect_to root_path, :alert => 'I can not convert a string!'
    end
  end
  
  def show
    
  end
end
