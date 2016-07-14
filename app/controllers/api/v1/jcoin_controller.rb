class Api::V1::JcoinController < ApplicationController
  # http_basic_authenticate_with :name => "myfinance", :password => "credit123"
  skip_before_filter :authenticate_user! # 移除認證
  skip_before_filter :verify_authenticity_token, :only => [:fetch, :trans]
  before_filter :fetch_jcard, :except => [:index] # 執行動作前, 先查詢卡號
  #
  def fetch
    # processing jobs
    # bla bla ...

    # final output
    if @bool
      @jcoinm = Jcoinm.find_by(jcard_id: params[:id])
        respond_to do |format|
        # format.json { render json: @jcard }
          format.json { render json: { card_id: params[:id], param1: "exist", param2:  @jcoinm.jcoin_amt.to_s  } }

        end
    else
      respond_to do |format|
        # format.json { render json: @jcard }
        format.json { render json: { card_id: params[:id], param1: "not exist", param2: 0.to_s } }

      end
    end



  end

  def trans
    # processing jobs
    # bla bla ...
    if @bool
      @jcoinm = Jcoinm.find_by(jcard_id: params[:id])
      @jcoin_amt = @jcoinm.jcoin_amt   #目前捷幣餘額


      @custom_no   = params[:custom_no]
      @data_date   = params[:data_date]
      @sale_no     = params[:sale_no]
      @data_type_no = params[:data_type_no]
      @opt_amt     = params[:opt_amt].to_i
      @redeem_amt  = params[:redeem_amt].to_i
      @reward_amt  = params[:reward_amt].to_i

      @balance = @jcoin_amt-@redeem_amt+@reward_amt

      #puts @custom_no
      #puts @data_date
      #puts @sale_no
      #puts @data_type_no
      #puts @opt_amt
      #puts @redeem_amt
      #puts @reward_amt

      @jcoinm.jcoinds.create(custom_no: @custom_no ,data_date: @data_date,sale_no: @sale_no,data_type_no: @data_type_no,
                            opt_amt: @opt_amt, redeem_amt: @redeem_amt, reward_amt: @reward_amt, balance: @balance )

      @jcoinm.update(jcoin_amt: @balance)

      respond_to do |format|
        # format.json { render json: @jcard }
        format.json { render json: { card_id: params[:id], param1: "exist", param2: "save_ok" } }

      end
    else


      puts params[:test1]
      # final output
      respond_to do |format|
        format.json { render json: { card_id: params[:id], param1: "not exist", param2: 0.to_s } }
      end
    end
  end

  protected
  def fetch_jcard
    # @jcard = JCard.where(card_id: params[:id])
    #puts params[:id]
    @bool = Jcoinm.exists?(jcard_id: params[:id])

  end
end
