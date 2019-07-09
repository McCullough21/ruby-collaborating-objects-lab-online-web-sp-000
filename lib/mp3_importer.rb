class MP3Importer
attr_accessor :path

def initialize(path)
   @path = path
end

def files
  files = []
   @path.each do |file|
     files << file
   end 
end





end
