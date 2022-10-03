
# C:\Users\00005830\PycharmProjects\Day1Python\Testing.txt

class ReadNotepad:

    def readfromnotepad(self):
        a = open("C:/Users/00005830/PycharmProjects/Day1Python/Testing.txt", "r")
        print(a.read())

    def appendtonotepad(self, myappendline):
        a = open("C:/Users/00005830/PycharmProjects/Day1Python/Testing.txt", "a")
        a.write(myappendline)
        a.close()

    def addone(self, b):
        for i in range(b):
            a = open("C:/Users/00005830/PycharmProjects/Day1Python/Testing.txt", "a")
            a.write(str(i))
            a.close()


obj = ReadNotepad()
#obj.readfromnotepad()
#obj.appendtonotepad("Tomorrow we will learn xpath and css")
obj.addone(20)
