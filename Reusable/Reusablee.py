from xml.dom import minidom
from pathlib import Path


def readxmltestdata(nodename):
    myxmldoc = minidom.parse(str(Path(__file__).parent.parent)+"/webData.xml")
    data = myxmldoc.getElementsByTagName(nodename)[0]
    return data.firstChild.data
