class PinnsController < ApplicationController
  before_action :find_pinn, only: [:show, :edit, :update, :destroy] 

	def index
    @pinns = Pinn.all.order("created_at DESC")
	end

  def show
  end

	def new
	 @pinn = current_user.pinns.build
	end

	def create
	 @pinn = current_user.pinns.build(pinn_params)

    if @pinn.save
      redirect_to @pinn, notice: "Successfully Created New Pin"
    else
      render 'new'
    end  
	end

  def edit
  end

  def update
    if @pinn.update(pinn_params)
      redirect_to @pinn, notice: "Pinn was Successfully Updated!"
    else
      render 'edit'
    end  
  end

  def destroy
    @pinn.destroy
    redirect_to root_path
  end

	private

	def pinn_params
		params.require(:pinn).permit(:title, :description, :image)
	end

  def find_pinn
    @pinn = Pinn.find(params[:id])
  end
end
