from xml.dom import minidom
from pathlib import Path


def readxml(node_name):
    myxmldoc = minidom.parse(str(Path(__file__).parent.parent)+"/Day7/fleekdata.xml")
    test_data = myxmldoc.getElementsByTagName(node_name)[0]
    return test_data.firstChild.data


def fleektopmenubars(linkname):
    return "//nav[@class='main_menu drop_down right']/ul/li/a/span[text()='"+linkname+"']"


def servicessubmenuoptions(linkname):
    return "(//span[text()='"+linkname+"'])[1]"



