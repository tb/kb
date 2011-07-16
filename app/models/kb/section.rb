module Kb
  class Section < ActiveRecord::Base

    has_ancestry :cache_depth => true
    include AncestryMoveMethods
    acts_as_list :scope => [:ancestry], :order => :position

    has_many :articles

    validates :title, :presence => true

    def title_with_position
      "#{position}. #{title}"
    end

    def title_with_full_position
      "#{path.map(&:position).join('.')}. #{title}"
    end
  end
end