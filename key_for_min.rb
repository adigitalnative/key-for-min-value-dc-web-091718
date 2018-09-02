# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_value = {}
  
  values = name_hash.map do |key, value|
    {name: key, value: value}
  end
  
  values.each do |item|
    if item[:value] < min_value[:value]
      min_value[:value] = item[:value]
      min_value[:name] = item[:name]
    end
  end
  
  min_value[:name]
end