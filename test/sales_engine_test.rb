require "minitest/autorun"
require './lib/sales_engine'
require './lib/merchant_collection'
require "./lib/merchant"
require 'pry'
class SalesEngineTest < Minitest::Test
  def setup
    @sales_engine = SalesEngine.from_csv({
          :items     => "./data/items.csv",
          :merchants => "./data/merchants.csv",
        })
  end
  def test_it_exists
    assert_instance_of SalesEngine, @sales_engine
  end

  def test_it_gets_merchant_list
    expected = {:id => 12334105, :name => "Shopin1901"}
    assert_equal expected, @sales_engine.merchant_list.first
    expected = {:id => 12337411, :name => "CJsDecor"}
    assert_equal expected, @sales_engine.merchant_list.last
  end

  def test_it_gets_merchant_collection
    assert_instance_of MerchantCollection, @sales_engine.merchant_collection
  end

  def test_it_can_get_item_list
    expected = {:id => 263395237, :name => "510+ RealPush Icon Set",
    :description => "You&#39;ve got a total socialmedia iconset! Almost every social icon on the planet earth.
More then 510+ icons to use and a BONUS PACK included (free 85 original UI icons included).
Facebook, Pinterest, Twitter, Google, Instagram and a lot of unique icons like Zynga, Tinder and much more...
I provide you a bunch of folders with ready to go transparent PNG in 8 sizes (512px, 256px, 128px, 96px, 64px, 48px, 32px, 24px). The iconset is made by enjoy and pixel perfection.




Files:

AI, PSD, CDR, PNG, JPEG, SVG, TTF, EOT, WOFF




Why should I buy it?

100% vector shapes (AI, CDR, SVG)
image file (transparent PNG, JPEG, SVG)
reaty to use web font files (TTF, EOT, WOFF)
easy to customize vector layerd PSD
flat design excellent for any background
Hover & Selected two states
available in 8 transparent PNG Sizes
pixel perfect precision




Icons list:

8tracks
9gag
500px
about
addthis
AIM
alistapart
allegro
amazon
angelList
AOL
appstore
ask
aws
badoo
baidu
basecamp
bebo
beejive
behance
bigcartel
bing
bitbucket
bitcoin
bitly
blablacar
blip
bloger
bloglovin
blurb
booking
bublews
buffer
chirp
codepen
coderwall
codeschool
coursera
deezer
delicious
designer news
designfloat
deviantart
digg
disqus
dribbble
dropbox
ebay
ello
endomondo
envato
e-podroznik
etsy
eventbrite
evernote
exfm
facebook
fancy
fedburner
feedly
filmweb
flattr
flickr
flipboard
folkd
foodspotting
forrst
foursquare
getpocket
git
github
goodreads
googledrive
googlepicasa
googleplay
google+
gravatar
hongouts
heroku
hi5
houzz
icq
imdb
imgur
instagram
jakdojade
jsfiddle
kickstarter
kik
klout
laravel
last
learnist
letterboxd
linkedin
livejournal
mediatemplate
medium
mendeley
microformats
mixi
mobilempk
modernizer
myspace
newsvine
nk
office
outlook
path
pheed
photobucket
pinboard
pingup
pinterest
playstation
proto
quora
rdio
readability
reddit
rss
sharebloc
sharethis
shopify
skydrive
skype
skyrock
slashdot
slideshare
smashingmagazine
snapchat
soundcloud
spotify
springme
aquarespace
stackexchange
stackoverflow
steam
stumbleupon
sulia
technorati
ted
thumbit
tinder
trapit
treehouse
trello
tripadvisor
tumblr
twitch
twitter
typo3
uber
viadeo
viddler
vimeo
vine
vkontakte
weheartit
weibo
whatsup
wikipedia
wordpress
wrike
xing
yahoo
yelp
youtube
zerply
zynga",
    :unit_price => 1200, :merchant_id => 12334141}
    assert_equal expected, @sales_engine.item_list.first
  end

  def test_item_collection_gets_item_collection
    assert_instance_of ItemCollection, @sales_engine.item_collection
  end
end
