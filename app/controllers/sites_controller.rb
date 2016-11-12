class SitesController < ApplicationController
  def index
    get_sites
  end


  private

  def get_sites
    urls = [
      { url: "https://medium.com/@nicolesilverberg/what-can-i-do-right-now-98169b7704b7#.7npca0tsp", author: "Nicole Silverberg", twitter: "nsilverberg" },
      { url: "http://jezebel.com/a-list-of-pro-women-pro-immigrant-pro-earth-anti-big-1788752078", author: "Joanna Rothkopf", twitter: "joannarothkopf" },
      { url: "http://www.huffingtonpost.com/entry/if-youre-overwhelmed-by-the-election-heres-what-you-can-do-now_us_5822c7d0e4b0e80b02cdf133", author: "Jenna Amatulli", twitter: "ohheyjenna" },
      { url: "http://maeril.tumblr.com/post/149669302551/hi-everyone-this-is-an-illustrated-guide-i-made", author: "Maeril", twitter: "itsmaeril" },
      { url: "http://www.vox.com/presidential-election/2016/11/10/13586322/trump-brexit-safety-pin", author: "Alex Abad-Santos", twitter: "alex_abads" },
      { url: "https://storify.com/editoremilye/i-worked-for-congress-for-six-years", author: "Emily Ellsworth", twitter: "editoremilye" },
      { url: "https://medium.com/@nicolesilverberg/it-s-on-us-too-an-easy-guide-to-contacting-your-elected-representatives-about-gun-control-2e2d8eb20e3f#.d84l91vwt", author: "Nicole Silverberg", twitter: "nsilverberg" },
      { url: "http://www.slate.com/articles/news_and_politics/politics/2016/11/how_liberals_can_channel_their_post_election_anxiety_into_action.html", author: "Slate Staff", twitter: "slate" },
      { url: "http://nymag.com/thecut/2016/11/how-to-donate-to-planned-parenthood-and-other-charities.html", author: "Lisa Ryan", twitter: "lisarya" },
      { url: "http://www.refugerestrooms.org/about", author: "Refuge Restrooms App", twitter: "refugerestrooms" },
      { url: "http://www.staywoke.org/", author: "Stay Woke", twitter: "nettaaaaaaaa" },
      { url: "http://www.racked.com/2016/11/9/13573936/donate", author: "Racked Staff", twitter: "Racked" }
    ]
    @sites = urls.map { |u| { thumbnail: LinkThumbnailer.generate(u[:url]), author: u[:author], twitter: u[:twitter], url: u[:url] }  }
  end
end
