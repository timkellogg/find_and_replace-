class String

  define_method(:find_and_replace) do |find, replace|
    # Looks in the text the user put in, finds the letters that match what the user
    # put in for the first argument, and changes those to what the user put in for
    # the second argument.
    self.gsub(find, replace)
  end
end
