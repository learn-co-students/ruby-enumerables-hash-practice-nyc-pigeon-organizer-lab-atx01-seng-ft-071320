require 'pry'

#main
def nyc_pigeon_organizer(data)
  # write your code here!
  #1 
  results = data.each_with_object({}) do |(key, value), finA|
    #2 
    value.each do |in_key, names|
      #3
      names.each do |name|
        if !finA[name]
          finA[name] = {}
        end 
        if !finA[name][key]
          finA[name][key] = [] 
        end 
        finA[name][key].push(in_key.to_s)
        #binding.pry
      #3
      end
      #binding.pry 
    #2 
    end
    finA
  #1 
  end
  #binding.pry 
#main
end
