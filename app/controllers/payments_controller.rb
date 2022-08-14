class PaymentsController < ApplicationController
  before_action :set_payment, only: %i[show edit update destroy]

  # GET /payments or /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1 or /payments/1.json
  def show; end

  # GET /payments/new
  def new
    @payment = Payment.new
    @categories = Category.includes(:user).where(user: current_user)
  end

  # GET /payments/1/edit
  def edit; end

  # POST /payments or /payments.json
  def create
    @payment = Payment.new(payment_params)
    @payment.user = current_user

    respond_to do |format|
      if @payment.save
        format.html { redirect_to category_path(@payment.category), notice: 'Payment was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1 or /payments/1.json
  def destroy
    @payment.destroy

    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_payment
    @payment = Payment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def payment_params
    params.require(:payment).permit(:name, :amount, :category_id)
  end
end
