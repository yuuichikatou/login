class ContactsController < ApplicationController
  def index
  end

  def new
    # 追記する
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      Contact.create(params.require(:contact).permit(:name, :email, :content))
      redirect_to new_contact_path
      
    else
      # 入力フォームを再描画
      render 'new'
    end
  end
  
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
