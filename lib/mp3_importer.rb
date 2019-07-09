class MP3Importer
attr_accessor :path

def initialize(path)
   @path = path
end

def files
  @files = []
   Dir[@path].each do |file|
     @files << file
   end
   @files
end





end
