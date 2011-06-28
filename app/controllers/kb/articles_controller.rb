module Kb
  class ArticlesController < Kb::ApplicationController

    archetype :browser

    belongs_to :section, :parent_class => Kb::Section

    before_filter do
      self.class.send(:layout, 'kb/article') if has_resource?
    end

    before_filter do
      add_breadcrumb "Knowledge base", sections_path
      if has_resource?
        resource.section.ancestors.each do |section|
          add_breadcrumb section.title_with_full_position, section_path(section)
        end
      end
    end

  end
end
