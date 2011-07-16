module Kb
  class Admin::Sections::SortController < Kb::Admin::ApplicationController

    def update
      @section = Kb::Section.find_by_id(params[:id])
      parent = Kb::Section.find_by_id(params[:parent_id])
      prev_item = Kb::Section.find_by_id(params[:prev_id])
      next_item = Kb::Section.find_by_id(params[:next_id])

      if parent
        @section.move_to_child_of(parent)
      end

      if next_item
        @section.move_to_left_of(next_item)
      elsif prev_item
        @section.move_to_right_of(prev_item)
      end

      render :nothing => true
    end
    
  end
end
