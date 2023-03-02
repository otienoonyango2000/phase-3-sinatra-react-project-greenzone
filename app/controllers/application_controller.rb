class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/movies' do
    movies = Movie.all 
    movies.to_json
  end


  #add movies
  post "/movies" do
    title = params[:title]
    year = params[:year]
    runtime = params[:runtime]
    director = params[:director]
    actors = params[:actors]
    plot = params[plot]
    posterUrl = params[posterUrl]

    post = Movie.create(title: title, year: year, runtime: runtime, director: director, actors: actors,
    plot: plot, posterUrl: posterUrl)
  end

  #delete a movie
  delete "/movies/:id" do
    count_movies = Movie.where(id: params[:id]).count() 
          movie = Movie.find(params[:id])
          movie.destroy

  end

 #edit
  # patch '/movies/:id' do
  #   check_movie_existence = Post.exists?(id: params[:id])
  #   title = params[:title]
  #   year = params[:year]
  #   runtime = params[:runtime]
  #   director = params[:director]
  #   actors = params[:actors]
  #   plot = params[plot]
  #   posterUrl = params[posterUrl]

  #   movie = Movie.find_by(id: params[:id])
  #   Movie.update(title: title, year: year, runtime: runtime, director: director, actors: actors,
  #   plot: plot, posterUrl: posterUrl)
  #   # post.update(title: title, content: content, user_id: user)
  # end

end
