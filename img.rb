puts ARGV
#basedir="."
bd=ARGV[0]

puts "ok #{bd}"
# files = Dir.glob("*.jpg")
path = "images/002_entry/*.JPG"
# path = "/home/swag/RebeccaHudson.github.io/images/002_entry/*.JPG"
# path = "/home/swag/blog/seeleypix/*.JPG"
# path = "#{bd}/*.jpg"
puts "path: #{path}"
files = Dir.glob(path).sort
# puts "files: #{files}"
File.open("imgs.html", "w") do |outfile| 
  outfile.write '<div class="photodump">' + "\n"
  outfile.write '<ul>' + "\n"
  files.each do |fpath|
      bn = File.basename(fpath, ".JPG")
      element = "<li><img src='#{fpath}'/>\n<p class='photocap'>  #{bn}\n</p></li>\n"
      # puts "fpath: #{fpath}; basename: #{bn}"
      # outfile.write "#{bn}\n"
      outfile.write element
  end
  outfile.write '</ul>' + "\n"
  outfile.write '</div>'
end



puts "done"
