require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_i
    "#{@number**2}"
  end   
  
 get '/say/:number/:phrase' do 
   @number = params[:number].to_i
   @phrase = params[:phrase].to_s
   
   repeat = @number.times do |num|
     "#{@phrase}"
    end  
   repeat
 end    
 

end