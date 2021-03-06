class SchoolClassesController < ApplicationController
    before_action :
    def new

    end

    def show
        find_student
    end

    def create
        @school_class = SchoolClass.new
        @school_class.title = params[:school_class][:title]
        @school_class.room_number = params[:school_class][:room_number]
    end

    def edit
        find_student
    end



private
    def post_params
        params.require(:school_class).permit(:title, :room_number)
    end

    def find_student
        @school_class = SchoolClass.find(params[:id])
    end
end
