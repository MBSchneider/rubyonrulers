# rulers/play/erb_test.rb

require "erubis"

template = <<TEMPLATE
Ball so hard
<%= whatever %> wanna fine me.
TEMPLATE

eruby = Erubis::Eruby.new(template)
puts eruby.src
puts "============"
puts eruby.result(:whatever => "ponies")
