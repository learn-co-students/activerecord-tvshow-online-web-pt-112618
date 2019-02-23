class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    #why does the symbol syntax switch from :rating to rating: in this query?
    self.order(rating: :desc).first

    # or
    # self.where("rating = ?", self.highest_rating).first
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.order(:rating).first
    # or
    #self.where("rating = ?", self.lowest_rating).first
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    self.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    self.order(name: :asc)
  end

end

# read about symbols in activerecord table column creation
# how you can query by string or symbol?
