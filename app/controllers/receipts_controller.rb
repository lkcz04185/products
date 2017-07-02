class ReceiptsController < ApplicationController

  def index
    @receipts = Receipt.all
  end

  def new
    @receipt = Receipt.new
    @receipt.items.build
  end
  
end
