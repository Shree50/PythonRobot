from time import sleep

from selenium import webdriver
from selenium.webdriver.common.by import By
from Reusable import Reusablee
from PageObjectModule import Signup


class HtmlTable:
    def launchwebucatorapplication(self):
        global driver
        driver = webdriver.Chrome("C:/New Softwares/chromedriver_win32/chromedriver")
        driver.implicitly_wait(10)
        driver.get("https://testautomationpractice.blogspot.com/")
        driver.maximize_window()

        # read HTML table

        # get total row count
        print("Total Table Row Count is == "+str(
            len(driver.find_elements(By.XPATH, "//table[@name='BookTable']/tbody/tr"))))

        # get total column count
        print("Total Table column Count is == " + str(
            len(driver.find_elements(By.XPATH, "//table[@name='BookTable']/tbody/tr[1]/th"))))

        # get Author, subject, Price as per the bookName
        print("If My BookName is"+"  " + Reusablee.readxmltestdata("bookName") + "  " + "Then 'Author Name' is == " +
              driver.find_element(By.XPATH, Signup.authorname(Reusablee.readxmltestdata("bookName"))).text)

        print("If My BookName is"+"  " + Reusablee.readxmltestdata("bookName") + "  " + "Then Subject Name is == " +
              driver.find_element(By.XPATH, Signup.subject(Reusablee.readxmltestdata("bookName"))).text)

        print("If My BookName is"+"  " + Reusablee.readxmltestdata("bookName") + "  " + "Then Price Name is == " +
              driver.find_element(By.XPATH, Signup.price(Reusablee.readxmltestdata("bookName"))).text)


    def testradiobutton(self):
        # check box
        driver.get("https://intellipaat.com/signin/")
        driver.implicitly_wait(10)

        # first check remember me check box is not checked by default...

        check_box = driver.find_element(By.NAME, "rememberme")
        if not check_box.is_selected():
            print("remember me check box is not checked by default")

        # check remember me check
        check_box.click()
        sleep(2)

        # remember check box is selected
        if check_box.is_selected():
            print("remember me check box is selected once we click on")

        driver.quit()


obj = HtmlTable()
obj.launchwebucatorapplication()
obj.testradiobutton()

