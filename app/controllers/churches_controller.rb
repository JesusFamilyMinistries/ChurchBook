class ChurchesController < ApplicationController

def index
  @churches = Church.all
end

def new
  @church = Church.new
end

def create
  @church = Church.new(params.require(:church).permit(:name, :location))
  if @church.save
     redirect_to churches_path
  else
     render 'new'
  end
end

def edit
  @church = Church.find(params[:id])
end

def update
  @church = Church.find(params[:id])
  if @church.update(params.require(:church).permit(:name, :location))
     redirect_to churches_path
  else
     render 'edit'
  end
end

def show
  @church = Church.find(params[:id])
end

def destroy
  @church = Church.find(params[:id])
  @church.destroy
  redirect_to churches_path
end

end
