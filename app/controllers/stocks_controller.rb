class StocksController < ApplicationController
  def search
    if params[:stock].blank?
      flash.now[:danger] = "That stock doesnt exist"
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "That stock doesnt exist" unless @stock
    end
      respond_to do |format|
        format.js{render partial: 'users/results'}
      end
    end
  end





