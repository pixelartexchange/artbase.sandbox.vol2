#
#  todo/fix:
#     move export to opensea.cache repo !!!!!


###
#   export collections; to run use:
#  $ ruby sandbox/export.rb


$LOAD_PATH.unshift( "../artbase/artbase/lib" )
$LOAD_PATH.unshift( "../artbase/artbase-opensea/lib" )
require 'artbase'
require 'artbase-opensea'


=begin
linter = CollectionsOpenSeaLinter.new
linter.lint

puts
puts "  #{linter.warns.size} warning(s):"
pp linter.warns
=end


exporter = CollectionsExporter.new(
            base_url: 'https://github.com/pixelartexchange/artbase.sandbox.vol2/raw/master'
)



exporter.export( '../opensea.cache/artbase' )

puts
puts "  #{exporter.warns.size} warning(s):"
pp exporter.warns


puts "bye"
