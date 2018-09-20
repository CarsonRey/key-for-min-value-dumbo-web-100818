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

# declare variables for storage OUTSIDE of the (do/end)  block 
# The variable for storage can't have an integer value because that integer could be equal to the value in the actual hash -- so it has to be nil. 
# There has to be a conditional in the iteration to make up for not using '.sort'. 
# Keep in mind that if the hash is being iterated over, there will be multiple evaluations of the hash according to what you place in the block