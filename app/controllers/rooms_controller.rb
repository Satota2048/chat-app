class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    # 何か問題あり↓roomsで対応中
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end