module Kb
  class SectionsController < Kb::ApplicationController

    archetype :browser

    before_filter :only => 'index' do
      @recently_added = Kb::Article.limit(5).order("updated_at desc")
    end

    before_filter :except => 'index' do
      if has_resource?
        add_breadcrumb "Knowledge base", sections_path
        resource.ancestors.each do |section|
          add_breadcrumb section.title_with_full_position, section_path(section)
        end
        add_breadcrumb resource.title_with_full_position, section_path(resource)
      end
    end
    
  end
end

