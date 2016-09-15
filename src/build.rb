my_dir = Dir["./*.html"]
layout = File.open("layout.html", "rb").read
my_dir.each do |filename|
  next if filename == './layout.html'
  file = File.open(filename)
  contents = file.read
  result = layout.sub('{{contents}}', contents)
  dest = File.open('../' + filename, "w")
  dest.write(result)
end
