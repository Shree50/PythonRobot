def featurecourse(headername):
    return "//h1[text()='"+headername+"']"


def subtext(subtext):
    return "//div[contains(text(),'"+subtext+"')]"


def countcourse(count):
    return "//div[@class='"+count+"']/div/div"


def featurecoursetitle(position):
    return "//div[@class='col-lg-9']/div/div["+position+"]/div/div[1]//h5/a"


def featurecourseduration(duration1):
    return "//div[@class='col-lg-9']/div/div["+duration1+"]/div/div[1]/div/div[1]"


def featurecourseliveclass(class1):
    return "//div[@class='col-lg-9']/div/div["+class1+"]/div/div[1]/div/div[2]//span"





