
def authorname(bookname):
    return "//table[@name='BookTable']/tbody/tr/td[text()='"+bookname+"']/../td[2]"


def subject(bookname):
    return "//table[@name='BookTable']/tbody/tr/td[text()='"+bookname+"']/../td[3]"


def price(bookname):
    return "//table[@name='BookTable']/tbody/tr/td[text()='"+bookname+"']/../td[4]"
