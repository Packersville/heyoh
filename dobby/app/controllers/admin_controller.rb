class AdminController < ApplicationController
  authorize_resource :class => false
end
