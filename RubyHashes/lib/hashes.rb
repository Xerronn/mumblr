# RubyHashes
# Part I
def array_2_hash emails, contacts
    counter = 0
    contacts.each do |key, value|
        if emails[counter] != nil
            contacts[key] = emails[counter]
        else
            contacts[key] = ""
        end
        counter += 1
    end
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end

array_2_hash(["bobsmith@example.com","sallyfield@example.com","markdole@example.com"], {'Bob Smith'=>'', 'Sally Field'=>'', 'Mark Dole'=>''})

