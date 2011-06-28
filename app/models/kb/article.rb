module Kb
  class Article < ActiveRecord::Base
    
    acts_as_list :scope => [:section_id], :order => :position

    belongs_to :section

    validates :title, :presence => true
    validates_associated :section

    def title_with_position
      "#{position}. #{title}"
    end

    def title_with_full_position
      "#{section.path.map(&:position).join('.')}.#{position}. #{title}"
    end
  end
end