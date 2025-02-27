# require modules here

def load_library(file_path)
  # code goes here	  library = YAML.load_file(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticons|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end	end


def get_japanese_emoticon	#load_library('./lib/emoticons.yml')
  # code goes here	
def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
  library = load_library(file_path)
  if library["get_emoticon"].include?(english_emoticon) 
    library["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end	end


def get_english_meaning	def get_english_meaning(file_path = './lib/emoticons.yml', japanese_emoticon)
  # code goes here	  library = load_library(file_path)
  if library["get_meaning"].include?(japanese_emoticon) 
    library["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end 	end 