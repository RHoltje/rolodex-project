class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
  end

  def create
    @card = Card.new(cards_params)

    @card.save
    redirect_to @card
  end

  private

  def cards_params
    params.require(:card).permit(:first_Name, :last_Name, :address)
  end
end
