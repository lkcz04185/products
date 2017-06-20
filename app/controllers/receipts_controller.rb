class ReceiptsController < ApplicationController

  def index
    @recepits = Receipt.all
  end
end
