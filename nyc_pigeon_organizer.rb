require 'pry'

def nyc_pigeon_organizer(data)
  
  names=[]
  names=data[:color].map do |color, pigeon|
    pigeon
  end  
  names=names.flatten
  names=names.uniq
  new_data={}
  i=0 
  while i<names.length do 
    new_data[names[i]]={color: [],
      gender: [],
      lives: []
    }
    i+=1 
  end 
  
   data[:color].each do |col, pigeon|
    pigeon.each do |pig|
      new_data[pig][:color].push(col.to_s)
    end
  end
  
  
  data[:gender].each do |gend, pigeon|
    pigeon.each do |pig|
      new_data[pig][:gender].push(gend.to_s)
    end
  end
  
  data[:lives].each do |liv, pigeon|
    pigeon.each do |pig|
      new_data[pig][:lives].push(liv.to_s)
    end
  end
  
 
  new_data
  
  
  
  
  
  
end
