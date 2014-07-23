class PhotosController < ApplicationController

	#Each page shows one of the photos belonging to the given prompt
	def show()
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
		if params[:photo]
			@photo.user_name = params[:photo][:user_name]
			@photo.user_email = params[:photo][:user_email]
			@photo.file_name = params[:photo][:photo].original_filename
			@photo.prompt_id = params[:photo][:prompt_id]
		end
		if @photo.save
      		redirect_to(prompt_path(@photo.prompt_id), notice: "You have submitted a photo!")
		else
			flash.notice = "You have to add a photo to be able to submit"
      		render :new
   		end

	end
end

