class Video < ActiveRecord::Base



end


  #YT_LINK_FORMAT = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i
  #
  #before_create -> do
  #  self.uid = link.match(YT_LINK_FORMAT)
  #
  #self.uid = uid[2] if uid && uid[2]
  #
  #  if self.uid.to_s.length != 11
  #    self.errors.add(:link, 'is invalid.')
  #    false
  #  elsif Video.where(uid: self.uid).any?
  #    self.errors.add(:link, 'is not unique.')
  #    false
  #  else
  #    get_additional_info
  #  end
  #end
  #
  #validates :link, presence: true

  #request = "URL: https://www.googleapis.com/youtube/v3/videos?id=7lCDEYXw3mM&key=AIzaSyAh0CZ-jWpREV-3WtQ-4thTW0T-qU6_zrc
  #  &part=snippet,contentDetails,statistics,status"

  #request = "URL: https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=30&q=agile+ventures+scrums&type=video&key=AIzaSyAh0CZ-jWpREV-3WtQ-4thTW0T-qU6_zrc"


      #request = "http://gdata.youtube.com/feeds/api/users/#{user_id}/uploads?alt=json&max-results=50"
      #request += '&fields=entry(author(name),id,published,title,content,link)'

      #tags_filter = escape_query_params(tags)
      #request += '&q=' + tags_filter.join('|')






  #def get_additional_info
  #  begin
  #    client = YouTubeIt::Client.new(dev_key: ENV['AIzaSyAh0CZ-jWpREV-3WtQ-4thTW0T-qU6_zrc'])
  #    request = 'https://www.googleapis.com/youtube/v3/search?part=snippet&maxResults=30'
  #    request += '&q=agile+ventures+scrums&type=video'
  #    count = videos.total_result_count


#      client = YouTubeIt::Client.new(:dev_key => "dev_key_supplied_by_youtube_after_you_register_for_their_api")
#      videos = client.videos_by(:user => "some persons youtube username)
#  count = videos.total_result_count
#Then in view
#
#  <%= "So and so has <%= count %> videos on youtube" %>



      #https://gdata.youtube.com/feeds/api/videos?
      #q=football+-soccer
      #&orderby=published
      #&start-index=11
      #&max-results=10
      #&v=2
      #
      #request = 'http://gdata.youtube.com/feeds/api/videos?alt=json&max-results=50'
      #request += '&orderby=published'
      #request += '&fields=entry(author(name),id,published,title,content,link)'
      ##request += '&fields=entry[' + filter.join(' or ') + ']'
      #request += '&q=(' + project_tags_filter.join('|') + ')'
      #request += '/(' + members_filter.join('|') + ')'

      #video = client.video_by(:title => "Agile Ventures")
    #  self.title = video.title
    #  self.duration = parse_duration(video.duration)
    #  self.author = video.author.name
    #  self.likes = video.rating.likes
    #  self.dislikes = video.rating.dislikes
    #rescue
    #  self.title = '' ; self.duration = '00:00:00' ; self.author = '' ; self.likes = 0 ; self.dislikes = 0
