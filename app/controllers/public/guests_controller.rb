class Public::GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def index
  end

  def show
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



end
