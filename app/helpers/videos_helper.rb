module VideosHelper

  def video_link(video)
    link_to video, video['url'], id: video, class: 'yt_link', data: { content: video['content']}
  end

  def video_embed_link(video)
    "http://www.youtube.com/embed/#{video['id']}?enablejsapi=1"
  end



end

#def video_link(video)
#  link_to video[:title], video[:url], id: video[:id], class: 'yt_link', data: { content: video[:content] }
#end
#
#def video_embed_link(video)
#  "http://www.youtube.com/embed/#{video[:id]}?enablejsapi=1"
#end
