# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    nil
  else
     smallval = nil 
     smallkey = nil 
    name_hash.collect do |key, val|
      if smallval == nil
       smallval = val
       smallkey = key
      elsif smallval > val
       smallval = val
       smallkey = key
      end
    end
    smallkey
  end
end

# declare variables for storage OUTSIDE of the block 
# to return one unit 