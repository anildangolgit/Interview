'''check to see giving string is palindrome of not
e.g a='Tik Tok Tik'''
def isPalindrome(s) -> bool:
    original_string=s.split(" ")
    reversed_string=original_string[::-1]
    if (original_string==reversed_string):
        return True
    else:
        return False

if __name__ == "__main__":
    print(isPalindrome("Tik Tok Tik"))