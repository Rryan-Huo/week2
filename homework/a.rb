require "test/unit"
require 'open-uri'
require_relative 'route_inspector'
html = open("http://localhost:3000/rails/info/properties").read
html =~ /Application root<\/td><td class="value">([^>]+)</
root_dir = $1.strip if $1
#rake routes
#route_table = `cd #{root_dir}; bundle exec rake routes`
puts root_dir
# class TestRailsRoutes < Test::Unit::TestCase
# def routes
#     @inspector ||= RouteInspector.get_from_app
#   rescue
#     assert false, "You must run your app on port 3000 while running these tests."
#   end
#   def test_home_page_shows_list_of_favorite_things
#     favorites_path = routes[:favorites][2].sub('(.:format)', '')
#     assert_page_has_html_list(favorites_path)
#   end
# end