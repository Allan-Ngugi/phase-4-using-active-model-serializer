class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :director, :poster_url, :category, :discount, :female_director

  def summary
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end

  def summaries 
  movies = Movie.all
  render json: movies, each_serializer: MovieSummarySerializer
  end
end
