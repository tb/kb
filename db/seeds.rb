# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

=begin
(1..25).each do |nr|
  Post.create(:title => "Post #{nr}", :body => "Body #{nr}")
  puts "Created Post #{nr}"
end

(1..3).each do |nr|
  section = Section.create(:label => "Section #{nr}")
  puts "Created Section #{nr}"
  (1..6).each do |cat_nr|
    section.categories.create(:label => "Category #{nr}.#{cat_nr}")
    puts "Created Category #{nr}.#{cat_nr}"
  end
end
=end

Kb::Section.delete_all

gs = Kb::Section.create :title => "Getting Started", :desc => "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
gs.children.create :title => "What is APP?", :desc => "The Best in Time Tracking & Online Collaboration"
gs.children.create :title => "Invite Co-Workers", :desc => "Build your company’s team by adding people to your account"

faq = Kb::Section.create :title => "FAQs", :desc => "Frequently asked questions"

gs.children.each do |section|
  1.upto(10).each do |nr|
    section.articles.create :title => "Article #{nr}",
      :summary => "Short description for article #{nr}",
      :body => "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed consectetur justo. Sed lobortis scelerisque quam vitae interdum. Suspendisse posuere sodales elit. Cras eget elit nisl. Fusce id pharetra eros.</p><p>Praesent consectetur tempus egestas. Phasellus felis magna, tincidunt a fringilla vitae, lacinia consequat purus. Morbi convallis enim id nulla feugiat id commodo orci sollicitudin. Aliquam lacus est, iaculis ut auctor sit amet, rhoncus ut lectus.</p><p>Morbi sagittis metus felis, id ultricies velit. Phasellus a elit ac dolor lobortis hendrerit. Duis auctor elit augue. Nullam placerat, risus id ornare facilisis, lacus enim condimentum orci, at convallis lectus metus scelerisque tortor.</p>"
  end
end

1.upto(10).each do |nr|
  faq.articles.create :title => "Lorem ipsum dolor sit amet, consectetur adipiscing elit? (orignial position #{nr})",
      :body => "<p>Nullam placerat, risus id ornare facilisis, lacus enim condimentum orci, at convallis lectus metus scelerisque tortor.</p>"
end
