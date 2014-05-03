module VideosHelper


  def video_embed_link(video)

    "http://www.youtube.com/embed/#{video['id']}?enablejsapi=1"
  end

  def video_link(video)

    link_to video, video['url'], id: video, class: 'yt_link'
  end
  #link_to(name = nil, options = nil, html_options = nil, &block) public

end

#<a class="yt_link" data-content="Thomas Sampriti and Marcelo on WebsiteOne"
#href="http://www.youtube.com/watch?v=2ux-_a-GghQ&amp;feature=youtube_gdata"
#id="2ux-_a-GghQ">Thomas Sampriti and Marcelo on WebsiteOne</a>
