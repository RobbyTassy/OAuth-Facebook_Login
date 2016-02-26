require 'open-uri'

class Facebook
  def self.profile(token)
    url = 'https://graph.facebook.com/me'
    url += "?access_token=#{token}"
    url += "&fields=first_name,last_name,email"
    open(URI::encode(url)).read

  end
end
