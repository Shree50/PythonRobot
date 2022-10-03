class TestClass:
    a = 5
    x = "Mobile"

    def testmethod(self, frameworkname):

        print(frameworkname+" "+"framework")

    def addtwonum(self, a, b):

        print(a + b)

    def howtousereturn(self, a, b):
        if a > b:
            x = "Computer"
        else:
            x = "Laptop"

        return x


obj = TestClass()
obj.testmethod("testing robot")
obj.addtwonum(5,5)
print(obj.howtousereturn(10, 4))
print(obj.howtousereturn(4, 40))