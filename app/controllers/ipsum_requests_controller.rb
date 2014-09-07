class IpsumRequestsController < ApplicationController
  def new
    @ipsum_request = IpsumRequest.new
  end

  def create
    @ipsum_request = IpsumRequest.new(ipsum_params)
    if @ipsum_request.save
      redirect_to ipsum_request_path(@ipsum_request.id)
    else
      render 'new'
    end
  end

  def show
    @ipsum_request = IpsumRequest.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def ipsum_params
    params.require(:ipsum_request).permit(:paragraphs)
  end

end
