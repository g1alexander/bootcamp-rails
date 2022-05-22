class VideosController < ApplicationController
  before_action :set_video, only: %i[edit update show destroy]

  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.create video_params

    redirect_to videos_path
  end

  def show; end

  def edit; end

  def update
    @video.update video_params

    redirect_to show_video_path
  end

  def destroy
    @video.destroy
    redirect_to videos_path, status: :see_other
  end

  private

  def video_params
    params.required(:video).permit(:title, :description, :visible, :duration)
  end

  def set_video
    @video = Video.find params[:id]
  end
end
