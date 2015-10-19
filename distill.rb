require 'json'
require 'fileutils'

while gets
  r = JSON.parse($_)
  path = "out/#{r['z']}/#{r['x']}"
  FileUtils.mkdir_p(path) unless File.directory?(path)
  path += "/#{r['y']}.geojson"
  File.open(path, 'w') {|w|
    w.print JSON.dump(r['tile']), "\n"
  }
end
