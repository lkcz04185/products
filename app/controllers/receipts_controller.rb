class ReceiptsController < ApplicationController

  def index
    @receipts = Receipt.all
  end

  def new
    @receipt = Receipt.new
    @receipt.items.build
  end

  def create
    @receipt = Receipt.create(receipt_params)
    if @receipt.valid?
      redirect_to receipts_path
    else
     render :new, status: :unprocessable_entity
    end
  end
  

  private

  def receipt_params
    params.require(:receipt).permit(:name, items_attributes: [:id, :name])
  end

end
