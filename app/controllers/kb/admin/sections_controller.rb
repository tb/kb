module Kb
  class Admin::SectionsController < Kb::Admin::ApplicationController

    archetype :ajax, :ajax_inject
    defaults :route_prefix => 'admin'

    def show
      super do |format|
        format.html { render :action => 'index' }
      end
    end

  end
end
