class Public::CustomersController < ApplicationController
    def show
        @customer = current_customer
    end

    def edit
        @customer = current_customer
    end

    def update
        customer = current_customer
        customer.update(customer_params)
        redirect_to customers_my_page_path
    end

  def withdrawal
    @customer = current_customer
    # is_deletedカラムをtrueに変更することにより削除フラグを立てる
    @customer.update(is_deleted: true)
    
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end


    private
    
    def customer_params
    params.require(:customer).permit(:name, :email,:introduction)
    end

end
