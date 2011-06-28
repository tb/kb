# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "kb"
  s.summary = "Insert Kb summary."
  s.description = "Insert Kb description."
  s.files = Dir["{app,lib,config,db}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.version = "0.0.1"
end
