module HashFilter
  def concat_hash_keys(input, current_parent = '', hash = {})
    return hash[current_parent] = input unless input.is_a? Hash

    input.each do |key, value|
      parent = current_parent.clone
      parent << '.' unless parent.empty?
      parent << key
      concat_hash_keys value, parent, hash
    end
    hash
  end
end

Liquid::Template.register_filter HashFilter
