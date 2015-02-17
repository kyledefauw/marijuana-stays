class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)

    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def show
    @property = Property.find(params[:id])
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])

    if @property.update(property_params)
      redirect_to property_path(@property)
    else
      render :edit
    end
  end

  def destroy
    Property.destroy(params[:id])

    redirect_to properties_path
  end

  private

  def property_params
    params.require(:property).permit(:first_name, :last_name, :email, :phone_number, :additional_info, :property_name, :property_type, :housing_type)

  end
end
