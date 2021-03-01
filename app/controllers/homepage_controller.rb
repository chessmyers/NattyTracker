class HomepageController < ApplicationController
    layout "home"
  
    def index
      @homepage_props={}
    end
  end