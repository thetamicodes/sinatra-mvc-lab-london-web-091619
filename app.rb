require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    get '/piglatinize/new' do
        erb :user_input
    end

    post '/piglatinize' do
        pig = PigLatinizer.new
        @piglatin = pig.piglatinize(params[:user_phrase])
        erb :content
    end

end

