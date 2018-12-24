class PhotosController < ApplicationController
  # def create
  #   @program = Program.find(params[:program_id])
  #   @photo = @program.photos.create(photo_params)
  #   redirect_to program_path(@program)
  # end
  def create
    @photo = Program.find_by_id(params[:program_id]).photos.new(image: params[:file])
    if @photo.save!
      respond_to do |format|
        format.json{ render :json => @photo }
      end
    end
  end
 
  private
    def photo_params
      params.require(:photo).permit(:image)
    end
end
