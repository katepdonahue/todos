# Organizing Nested Data
 
# I have a collection of Programming Languages.  
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
 
# I would like you to reformat the nested structure to be of the following form
# {
#   :ruby => {
#     :style => [:oo],
#     :type => "interpreted"
#   },
#   :python => {
#     :style => [:oo],
#     :type => "interpreted"
#   }
#   etc etc
# }

new_languages = {}

languages.each do |style, lang_hash|
  lang_hash.each do |lang, type_hash|
    new_languages[lang] ||= {}
    new_languages[lang][:style] ||= []
    new_languages[lang][:style] << style
    new_languages[lang][:type] = type_hash[:type]
  end
end

# new_languages.each do |lang, empty_hash|
#   empty_hash[:style] = []
#   empty_hash[:type] = []
# end

puts new_languages
 
