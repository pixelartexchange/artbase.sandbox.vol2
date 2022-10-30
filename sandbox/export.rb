###
#   export collections; to run use:
#  $ ruby sandbox/export.rb


$LOAD_PATH.unshift( "../artbase/artbase/lib" )
$LOAD_PATH.unshift( "../artbase/artbase-opensea/lib" )
require 'artbase'
require 'artbase-opensea'


exporter = CollectionsExporter.new(
            base_url: 'https://github.com/pixelartexchange/artbase.sandbox.vol2/raw/master'
)



exporter.export( '../opensea.cache/artbase',
                 sync: false )   ## auto-sync check via online opensea api call/request?

puts
puts "  #{exporter.warns.size} warning(s):"
pp exporter.warns


puts "bye"
