module Kb
  class Admin::SectionsController < Kb::Admin::ApplicationController

    class_attribute :resource_class; self.resource_class = Kb::Section
    archetype :ajax_inject
    defaults :route_prefix => 'admin'
    
  end
end
