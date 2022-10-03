from time import sleep

from selenium import webdriver
from selenium.webdriver.common.by import By
from PageObjectModule import HomePage
from PageObjectModule import SigninPage
from Reusable import Reusablee


class TestWebu:
    def launchwebucatorapplication(self):
        global driver
        driver = webdriver.Chrome(Reusablee.readxmltestdata("chromepath"))
        driver.implicitly_wait(10)
        driver.get(Reusablee.readxmltestdata("url"))
        driver.maximize_window()

    def dowebucatorhometesting(self):
        """
        1. Click on webucator logo
        2. Validate the url
        3. Validate page title
        4. technical business(header)
        5. Sign in button
        6. click on sign in button
        7. validate user is navigating to sign in page
        """
        logo = driver.find_element(By.XPATH, HomePage.logo_xpath())
        logo.click()
        driver.implicitly_wait(10)
        if driver.current_url == Reusablee.readxmltestdata("url"):
            print("after Clicking on logo, it is navigating to home page==>" + "PASS")
        if driver.title == Reusablee.readxmltestdata("pageTitle"):
            print("after Clicking on logo, it is showing correct page title==>" + "PASS")

        if driver.find_element(By.XPATH, HomePage.header_xpath()).is_displayed():
            print("Technical Business header is present in Home page" + "PASS")

    def dowebucatorlogintesting(self):
        if driver.find_element(By.XPATH, HomePage.signin_xpath()).is_displayed():
            print("Sign in button is present in Home page" + "PASS")

        driver.find_element(By.XPATH, HomePage.signin_xpath()).click()
        driver.implicitly_wait(10)

        if driver.find_element(By.XPATH, SigninPage.signinheader_xpath()).is_displayed():
            print("User successfully Navigated to signin Page")

    def webucator_quit(self):
        driver.quit()
        print("Webucator application is closed")


obj = TestWebu()
obj.launchwebucatorapplication()
obj.dowebucatorhometesting()
obj.dowebucatorlogintesting()
obj.webucator_quit()
