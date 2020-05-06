require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num ** 2).to_s
  end

  # get '/say/:number/:phrase' do
  #   @num = params[:number].to_i
  #   @ph = params[:phrase]

  #   @num.times do
  #     @ph
  #   end
  # end

  get '/say/:number/:phrase' do
		@num = params[:number].to_i
		@ph = params[:phrase]
		str = ""
		@num.times do
			str += @ph
		end
		str
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]

    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i

    case @op 
    when 'add' 
      (@n1 + @n2).to_s
    when 'subtract'
      (@n1 - @n2).to_s
    when 'multiply'
      (@n1 * @n2).to_s
    else 'divide'
      (@n1 / @n2).to_s
    end
  end

end