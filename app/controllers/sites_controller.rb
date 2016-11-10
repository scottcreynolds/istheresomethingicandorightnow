class SitesController < ApplicationController
  def index
    get_sites
  end


  private

  def get_sites
    urls = [
      { url: "https://medium.com/@nicolesilverberg/what-can-i-do-right-now-98169b7704b7#.7npca0tsp", author: "Nicole Silverberg", twitter: "nsilverberg" },
      { url: "http://jezebel.com/a-list-of-pro-women-pro-immigrant-pro-earth-anti-big-1788752078", author: "Joanna Rothkopf", twitter: "joannarothkopf" }
    ]
    @sites = urls.map { |u| { thumbnail: LinkThumbnailer.generate(u[:url]), author: u[:author], twitter: u[:twitter], url: u[:url] }  }
  end
end
