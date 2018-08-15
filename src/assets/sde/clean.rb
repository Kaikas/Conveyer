#!/bin/ruby
File.open('typeIDs_clean.json', 'w') do |out_file|
  File.foreach('typeIDs.json').with_index do |line,line_number|
     if line.match(/^      "ja":/) == 0 then
     else
      out_file.puts line
     end
  end
end
