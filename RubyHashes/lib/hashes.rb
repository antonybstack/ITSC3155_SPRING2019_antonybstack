# RubyHashes
# Part I
def array_2_hash emails, contacts
    i = 0 #iterator
    if emails[0] == nil #If the emaill array is empty, contacts is returned
        return contacts
    else
        contacts.each do |key,value|
            key = "#{key}"
            contacts[key] = emails[i]
            i+=1
        end
    end
    return contacts
end

# Part II
def array2d_2_hash contact_info, contacts
    i = 0
    if contact_info[0][0] == nil 
        return contacts
    end
    
    contacts.each do |key, value|
        key = "#{key}" 
        contacts[key] = {:email => contact_info[i][0], :phone => contact_info[i][1]}
        i+=1
    end
    return contacts
end

# Part III
def hash_2_array contacts
    arrayName = []
    arrayPhone = []
    arrayEmail = []
    arrayFinal = []
    
    contacts.each do |key,value|
        newkey = :"#{key}"
        
        arrayEmail << contacts[newkey][:email]
        arrayPhone << contacts[newkey][:phone]
        arrayName << "#{key}"
    end
    arrayFinal << arrayEmail
    arrayFinal << arrayPhone
    arrayFinal << arrayName
    
    return arrayFinal
end
