class HomeController < ApplicationController
	# Allows only the index to be viewed prior to login
	skip_before_action :authenticate_user!, :only => [:index]


end
