class HomepageController < ApplicationController
    layout "home"
  
    def index
      @homepage_props = {parks: Park.all}
    end
  end