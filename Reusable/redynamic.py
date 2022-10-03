from xml.dom import minidom
from pathlib import Path


def popularcoursessublinkxpath(linkname):
    return "//h4[text()='Popular Courses']/../p[3]/a[text()='"+linkname+"']"


def readxml(node_name):
    myxmldoc = minidom.parse(str(Path(__file__).parent.parent)+"/Day5robotTesting/testdynamic.xml")
    test_data = myxmldoc.getElementsByTagName(node_name)[0]
    return test_data.firstChild.data


def myimagepath(imageName):
    path = str(Path(__file__).parent.parent)+"/Day7/"+imageName
    return path

