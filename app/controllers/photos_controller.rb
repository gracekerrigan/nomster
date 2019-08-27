class PhotosController < ApplicationController	
	before_action :authenticate_user!

	def create
		@place = Place.find(params[:place_id])
		@place.photos.create(photo_params)
		redirect_to place_path(@place)
	end	

	private

	def photo_params
		params.require(:photo).permit(:caption, :picture)
	end	
	
	def destroy
		@photo = Photo.find(params[:id])
		if @photo.user !=current_user
			return render plain: 'Not Allowed'. status: :forbidden
		end
		
		@photo.destroy
		redirect_to root_path	

end
