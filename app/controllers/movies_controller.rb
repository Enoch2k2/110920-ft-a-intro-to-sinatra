class MoviesController < ApplicationController
    # will contain the concerns of the CRUD for movies

    # CRUD - create, read, update, delete

    get "/movies/new" do
        erb :'movies/new'
    end

    get '/movies' do
        @movies = Movie.all
        erb :'movies/index'
    end

    post '/movies' do
        movie = Movie.new(title: params[:title], rating: params[:rating])
        if movie.save
            redirect "/movies"
        else
            erb :'movies/new'
        end
    end
end