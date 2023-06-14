class Public::GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def edit
  end

  def create
    @guest = Guest.new(guest_params)
    @guest.save
    redirect_to guests_path
  end

  def update

  end

  def destroy
  end

  private
    def guest_params
      params.require(:guest).permit(:first_name, :last_name, :first_name_kana,
      :last_name_kana, :relationship, :title, :post_code, :address,
      :phone_number, :mail, :attendance, :allergy)
    end

end
