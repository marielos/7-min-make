class PromptsController < ApplicationController
	

	
	def index()
		@all_prompts = Prompt.find(:all)
	end

	def show()
		@prompt = Prompt.find_by_id(params[:id])
	end

	def new()
		@prompt = Prompt.new

	end

	def create()
		@prompt = Prompt.new
		@prompt.title = params[:prompt][:title]
		if @prompt.save
      		redirect_to(@prompt, notice: "New PROMPT has been added!")
    	else
      		render :new
   		end
	end

end
