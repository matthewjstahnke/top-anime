class AnimesController < ApplicationController
    get "/animes" do
        redirect_if_not_logged_in
        @animes = Anime.all
        erb :'animes/index'
    end
    get '/animes/new' do
        erb :'animes/new'      
    end

    post '/animes' do
        anime = current_user.animes.build(params[:anime])
        

        if anime.save
            redirect '/animes'
        else
            redirect '/animes/new'
        end
    end

end