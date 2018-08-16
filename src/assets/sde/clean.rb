#!/bin/ruby
skipnextline = false
File.open('typeIDs_clean.json', 'w') do |out_file|
  File.foreach('typeIDs.json').with_index do |line,line_number|
    if line.lstrip.start_with?('"de":') or
        line.lstrip.start_with?('"fr":') or
        line.lstrip.start_with?('"ja":') or
        line.lstrip.start_with?('"ru":') or
        line.lstrip.start_with?('"zh":') or
        line.lstrip.start_with?('"volume":') or
        line.lstrip.start_with?('"soundID":') or
        line.lstrip.start_with?('"groupID":') or
        line.lstrip.start_with?('"portionSize":') or
        line.lstrip.start_with?('"radius":') or
        line.lstrip.start_with?('"name":') or
        line.lstrip.start_with?('"mass":') or
        line.lstrip.start_with?('"graphicID":') or
        line.lstrip.start_with?('"raceID":') or
        line.lstrip.start_with?('"sofFactionName":') or
        line.lstrip.start_with?('"basePrice":') or
        line.lstrip.start_with?('"iconID":') or
        line.lstrip.start_with?('"capacity":') or
        line.lstrip.start_with?('"marketGroupID":') or
        line.lstrip.start_with?('"factionID":') or
        line.lstrip.start_with?('"masteries":') or
        line.start_with?('    },') or
        line.lstrip.start_with?('"published":') then
    else
      if line.lstrip.start_with?('"description":') then
        skipnextline = true
      else
        if skipnextline == false then
          if line.lstrip.start_with?('"en":') then
            out_file.puts line[0...-2]
          else
            out_file.puts line
          end
        else
          skipnextline = false
        end
      end
    end
  end
end
