class ChatsController < ApplicationController
  before_action :logged_in_user , only: [:room]
  def room
  	
  end

end
