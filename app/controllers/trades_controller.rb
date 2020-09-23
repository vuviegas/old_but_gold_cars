class TradesController < ApplicationController
  def new
    @trades = Trade.new
  end
end
