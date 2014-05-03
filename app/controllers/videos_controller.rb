class VideosController < ActionController::Base


  def index
    @videos = Video.all


      #@scrums = Scrum.all

      client = YouTubeIt::Client.new(:dev_key => "AIzaSyAh0CZ-jWpREV-3WtQ-4thTW0T-qU6_zrc")
      query = client.videos_by(:query => "agile ventures scrums")
      @videos = query.videos.map(&:video_id).map{ |str| str.scan(/tag:youtube.com,\d+:video:(.+)/).last.first}

  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.new(params[:video])
    if @video.save
      flash[:success] = 'Video added!'
      redirect_to root_url
    else
      render 'new'
    end
  end




end








