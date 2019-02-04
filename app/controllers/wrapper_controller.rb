class WrapperController < ApplicationController

	def wrap
    # @processed_text = params[:text]
		@text = params[:text]
		@column_number = params[:column_number].to_i
		@processed_text = helpers.process_text @text, @column_number
    @processed_chunks = @processed_text.split("\n")
    puts @processed_chunks
	end
end
