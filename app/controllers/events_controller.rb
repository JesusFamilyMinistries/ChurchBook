class EventsController < ApplicationController

def create
  @church = Church.find(params[:church_id]) 
  @event = @church.events.create(params[:event].permit(:name, :desc)) 
  redirect_to church_path(@church) 
end

def destroy 
  @church = Church.find(params[:church_id]) 
  @event = @church.events.find(params[:id]) 
  @event.destroy 
  redirect_to church_path(@church) 
end


end
