# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_value = {}
  name_hash.each do |key, value|
    if min_value.length != 0 && min_value[:value] > value
      min_value[:key] = key
      min_value[:value] = value
    end
  end
  
  return min_value[:key]
end