# require modules here
require "pry"
require "yaml"

def load_library(file_path)
library = YAML.load_file(file_path)
result = {}
library.each do |meaning, emoticons|
result[meaning] = Hash[:english => emoticons[0], :japanese => emoticons[1]].to_h
<<<<<<< HEAD

=======

  end
result
end


def get_japanese_emoticon(file_path, english_emoticon)
 library = load_library(file_path)
>>>>>>> b88100e42bf5bdd8859e15f1bd51b7fbdef40ee0
end
result
end


def get_japanese_emoticon(file_path, english_emoticon)
library = load_library(file_path)
result = {}
library.each do |meaning, lang_pair|
if library[meaning][:english] == english_emoticon
return library[meaning][:japanese]

    end
  end
"Sorry, that emoticon was not found"
end  

<<<<<<< HEAD
def get_english_meaning(file_path, japanese_emoticon)
library = load_library(file_path)
result = {}
library.each do |meaning, lang_pair|
if library[meaning][:japanese] == japanese_emoticon
return meaning
    end
  end
"Sorry, that emoticon was not found"
=======

def get_english_meaning(file_path, japanese_emoticon)
library = load_library(file_path)
result = {}

library.each do |meaning, key_pair|

if library[meaning][:japanese] == japanese_emoticon
result = meaning

else
result = "Sorry, that emoticon was not found"
  
    end
  end
pp result 
>>>>>>> b88100e42bf5bdd8859e15f1bd51b7fbdef40ee0
end  