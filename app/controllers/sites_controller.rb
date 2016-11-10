class SitesController < ApplicationController
  def index
    get_sites
  end


  private

  def get_sites
    urls = [
      "https://medium.com/@nicolesilverberg/what-can-i-do-right-now-98169b7704b7#.7npca0tsp",
      "http://jezebel.com/a-list-of-pro-women-pro-immigrant-pro-earth-anti-big-1788752078"
    ]
    @sites = urls.map { |u| LinkThumbnailer.generate(u) }
  end
end
