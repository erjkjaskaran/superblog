class LtController < ApplicationController
	def leantechnologies
		debugger
		params.permit!
		render plain: "Self: #{params[:self].as_json}"
		render plain: "Self: #{params[:id].as_json}"
		render plain: "Self: #{params[:time_spent].as_json}"
		
	end
end
