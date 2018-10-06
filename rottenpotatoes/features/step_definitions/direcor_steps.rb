Given(/^the following movies exist:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |movie_name, director_of_movie|
  movie = Movie.find_by_title(movie_name)
  movie.update!(director: director_of_movie)
end