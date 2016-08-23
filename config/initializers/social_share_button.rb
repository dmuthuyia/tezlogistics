SocialShareButton.configure do |config|
  #config.allow_sites = %w(twitter facebook google_plus weibo douban tqq renren qq kaixin001 baidu google_bookmark delicious huaban tumblr plurk pinterest)
  config.allow_sites = %w(twitter facebook google_plus delicious tumblr pinterest)
  #custom web page
  # <%= social_share_button_tag("My Home Page", :url => "http://mysite.com/foo") %>
end