class Show < ActiveRecord::Base
    def self.highest_rating
        maximum(:rating)
    end

    def self.most_popular_show
        highest_rating = highest_rating()
        show = find_by(rating: highest_rating)
        show if show
    end

    def self.lowest_rating
        minimum(:rating)
    end

    def self.least_popular_show
        lowest_rating = lowest_rating()
        show = find_by(rating: lowest_rating)
        show if show
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        where('rating > 5').all
    end

    def self.shows_by_alphabetical_order
        order(:name).all
    end
end