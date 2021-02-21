class HomepageController < ApplicationController
    layout "home"
  
    def index
      @homepage_props = { name: "Stranger" }
    end
  end