class SchoolClassesController < ApplicationController
    before_action :find_school_class, only: [:show, :edit]
    def new

    end

    def show
    end

    def create
        @school_class = SchoolClass.new(post_params)  
        redirect_to school_class_path(@school_class)
    end

    def edit
    end

    def update
        @school_class.update(post_params)
    end



private
    def post_params
        params.require(:school_class).permit(:title, :room_number)
    end

    def find_school_class
        @school_class = SchoolClass.find(params[:id])
    end
end