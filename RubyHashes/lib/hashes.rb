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
    counter = 0
    temp = {}
    contacts.each do |key, value|
        if contact_info != [[]]
            temp["email"] = contact_info[counter][0]
            temp["phone"] = contact_info[counter][1]
            contacts[key] = temp
            temp = {}
            counter += 1
        else
            contacts[key] = temp
            temp = {}
            counter += 1
        end
    end
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end
