class MP3Importer
attr_accessor :path

def initialize(path)
   @path = path
   @files = []
end

def files
   Dir[@path].each do |file|
     @files << file
   end 
end





end
