from xml.dom import minidom


class ReadXML:
    # C:\Users\00005830\PycharmProjects\Day1Python\MyAutomationTestData.xml

    def readdatafromxml(self, nodename):
        xmlobj = minidom.parse("C:/Users/00005830/PycharmProjects/Day1Python/MyAutomationTestData.xml")
        mydatavalue = xmlobj.getElementsByTagName(nodename)[0]
        return mydatavalue.firstChild.data


obj = ReadXML()
print(obj.readdatafromxml("userEmail"))
