module Kb
  class Admin::ArticlesController < Kb::Admin::ApplicationController

    class_attribute :resource_class; self.resource_class = Kb::Article
    archetype :ajax_inject
    defaults :route_prefix => 'admin'

    belongs_to :section, :parent_class => Kb::Section

  end
end
