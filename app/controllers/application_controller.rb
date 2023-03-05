class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/movies' do
    movies = Movie.all 
    movies.to_json(include: :reviews)
  end

  get '/reviews' do
    reviews = Review.all
    reviews.to_json
  end

  post '/reviews' do
    movie_id = params[:movie_id]
    title = params[:title]
    year = params[:year]
    comment = params[:comment]

    post = Review.create(title: title, year: year, comment: comment)
  end

  #add movies
  post "/movies" do
    title = params[:title]
    year = params[:year]
    runtime = params[:runtime]
    director = params[:director]
    actors = params[:actors]
    plot = params[:plot]
    posterUrl = params[:posterUrl]

    post = Movie.create(title: title, year: year, runtime: runtime, director: director, actors: actors,
    plot: plot, posterUrl: posterUrl)
  end

  #delete a movie
  delete "/movies/:id" do
    count_movies = Movie.where(id: params[:id]).count() 
          movie = Movie.find(params[:id])
          movie.destroy

  end

  delete "/reviews/:id" do
    count_revies = Review.where(id: params[:id]).count() 
          reviews = Review.find(params[:id])
          reviews.destroy

  end

 #edit
  patch '/movies/:id' do
    movie = Movie.find(params[:id])
    movie.update(
      title: params[:title],
      year: params[:year],
      runtime: params[:runtime],
      director: params[:director],
      actors: params[:actors],
      plot: params[:plot],
      posterUrl: params[:posterUrl]
    )
    movie.to_json
    
  end

end
