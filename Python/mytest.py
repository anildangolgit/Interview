from ipaddress import v4_int_to_packed
import unittest 
import ReverString as RS
import ValidParnethesis as v

class mytest(unittest.TestCase):
    def test_reversestring (self):
        myval=RS.Solution()
        self.assertEqual(myval.reverseString("this"),"siht")
    def test_ValidParenthesis(self):
        myval=v.Solution()
        self.assertEqual(myval.isValid("[]"),True)

if __name__=="__main__":
    unittest.main()
