module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(films)
        film_sort_country_rating = films.select { |film| film['country'].to_s.include?(',') && film['rating_kinopoisk'].to_f > 0 }
        film_only_rating = film_sort_country_rating.map { |film| film['rating_kinopoisk'].to_f }
        sum_rating = film_only_rating.reduce { |sum, film| sum + film }
        middle_rating = sum_rating / film_only_rating.size
      end

      def chars_count(films, threshold)
        film_sort_rating = films.select { |film| film['rating_kinopoisk'].to_f >= threshold }
        count_i = film_sort_rating.map { |film| film['name'].to_s.count("и") }
        all_count_i = count_i.reduce(0) { |count, film| count + film }
      end
    end
  end
end
