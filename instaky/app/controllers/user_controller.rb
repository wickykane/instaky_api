class UserController < ApplicationController
   def index
       @users = User.all
       json_response(@users)
   end 
end
