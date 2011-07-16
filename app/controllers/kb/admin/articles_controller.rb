module Kb
  class Admin::ArticlesController < Kb::Admin::ApplicationController

    archetype :ajax, :ajax_inject
    defaults :route_prefix => 'admin'

    belongs_to :section, :parent_class => Kb::Section
  end
end
