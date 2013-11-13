

class EntriesController < ApplicationController
  respond_to :json

  def index
    render :json => Entry.all
  end

  def show
    respond_with Entry.find(params[:id])
  end

  def create
    render :json => Entry.create(name:params[:name])
  end

  def update
    render :json =>  Entry.update(safe_params[:id], safe_params)
  end

  def destroy
    render :json =>  Entry.destroy(params[:id])
  end
  
  
  private
  
  def safe_params
    params.permit(:name, :winner, :id, :entry)
  end
  
end

