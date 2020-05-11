class ApplicationController < ActionController::Base
	# added by devise tutorial
	protect_from_forgery with: :exception
	# ! forces authentication before every action in all controllers
	before_action :authenticate_user!
	# Some views are public, so authenticate_user! shouldn’t be applied for them. 
	# You can use except or only selectors along with before_action. 
	# You can move before_action :authenticate_user! to specific controllers. 
	# And you can use skip_before_action for selected actions.

	# def after_sign_in_path_for(checkout_session)
	#	new_checkout_session_path
	# end

	# CanCanCan
	# load_and_authorize_resource, except: [:home, :index]


end
