class PhotosController < ApplicationController

	#Each page shows one of the photos belonging to the given prompt
	def show()
		@prompt = Prompt.find_by_id(params[:prompt_id])
		@photo = Photo.find_by_id(params[:id])
	end
	

	def new()
		@prompt = Prompt.find_by_id(params[:prompt_id])
		@photo = Photo.new
	end

	def create()
		@prompt = Prompt.find_by_id(params[:prompt_id])
		if params[:photo][:photo]
  			uploaded_io = params[:photo][:photo]
  			File.open(Rails.root.join('app', 'assets', 'images', uploaded_io.original_filename), 'wb') do |file|
    			file.write(uploaded_io.read)
 			end	
		end

		@photo = Photo.new
		@photo.date_time = DateTime.now
		if params[:photo][:photo]
			@photo.user_name = params[:photo][:user_name]
			@photo.creation_title = params[:photo][:creation_title]
			@photo.file_name = params[:photo][:photo].original_filename
			@photo.prompt_id = @prompt.id
		end
		if @photo.save
      		redirect_to(prompt_photo_path(@prompt, @photo), notice: "You have submitted a photo!")
		else
			flash.notice = "You have to add a photo to be able to submit"
      		render :new
   		end

	end
end

