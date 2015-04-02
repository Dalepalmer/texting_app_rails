class ContactsController < ApplicationController

  def index

  end

  def show
    @contact = Contact.find([:id])
  end

  def new
    @user = current_user
    @contact = Contact.new
  end

  def create
    if Contact.create(contact_params)
      flash[:notice] = "Successfully added contact"
      redirect_to '/'
    else
      flash[:alert] = "Failed to add contact"
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :number, :user_id)
  end
end
