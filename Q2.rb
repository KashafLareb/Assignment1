# 1. The username is between 4 and 25 characters.
# 2. It must start with a letter.
# 3. It can only contain letters, numbers, and the underscore character.
# 4. It cannot end with an underscore character.


# Ensuring point 1
def checkSize(str)
    if str.length>3 && str.length<26
        return true
    else return false
    end
end

def CodelandUsernameValidation(str)

    alphabet = /\A[a-zA-Z]/  # Ensuring point 2
    nonWordCharacter = /\W/  # Ensuring point 3

    if checkSize(str)
        if str.start_with?(alphabet) && !(str.match?(nonWordCharacter)) && !(str.end_with?("_"))  # Ensuring point 4
            return true
        else
            return false
        end
    else
        return false
    end  

end


def testingUsernameValidationFunction

    puts "Enter the user name: "
    inputString = gets
    puts CodelandUsernameValidation(inputString.chomp)
    
end

testingUsernameValidationFunction


