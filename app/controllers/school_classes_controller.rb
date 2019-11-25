class SchoolClassesController < ApplicationController

    def show
        @sc = SchoolClass.find(params[:id])
    end

    def new
        @sc = SchoolClass.new
    end

    def create
        
        @sc = SchoolClass.create(sc_params(:title, :room_number))

        redirect_to school_class_path(@sc)
    end

    def update
        @sc = SchoolClass.update(sc_params(:title, :room_number))

        redirect_to school_class_path(@sc)
    end

    def edit
        @sc = SchoolClass.find(params[:id])
    end

    private

    def sc_params(*args)
        params.require(:school_class).permit(*args)
    end

end