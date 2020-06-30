def nyc_pigeon_organizer(data)
  # write your code here!
  final_results = data.each_with_object({}) do |(key, value), final_array|
    value.each do |inner_key, names|
      #loops to the next level to access names
      names.each do |name|
        #checks if name is not in the hash and adds the name, then points to another hash
        if !final_array[name]
          final_array[name] = {}
        end
        #checks if name hash has a key, then points to an array
        if !final_array[name][key]
          final_array[name][key] = []
        end
        #adds the inner keys to the array
        final_array[name][key].push(inner_key.to_s)
      end
    end
  end
end