class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G','PG','PG-13','R']
  end

  def self.with_ratings(ratings, sort_by)
    Movie.where(rating: ratings).order(sort_by)
  end
end
