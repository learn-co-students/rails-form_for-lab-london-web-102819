class SchoolClassesController < ApplicationController
  def new
    @school_classes = SchoolClass.new

  def create
    @school_classes = SchoolClass.create(school_class_params)

    redirect_to school_class_path(@school_class)
  end

  def show
    @school_classes = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)
    
    redirect_to school_class_path(@school_class)
  end

  private 

  def school_class_params
    params.require(:school_Class).permit
  end 
end
