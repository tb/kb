module Kb
  class SectionsController < Kb::ApplicationController

    archetype :crud

    before_filter do
      self.class.send(:layout,  has_resource? ? 'kb/section' : 'kb/start')
    end

    before_filter do
      unless has_resource?
        @recently_added = Kb::Article.limit(5).order("updated_at desc")
      end
    end

    before_filter do
      if has_resource?
        add_breadcrumb "Knowledge base", sections_path
        resource.ancestors.each do |section|
          add_breadcrumb section.title_with_full_position, section_path(section)
        end
      end
    end

    before_filter :only => :index do
      @title = "Knowledge base"
    end

  end
end

