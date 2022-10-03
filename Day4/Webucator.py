from selenium import webdriver
from selenium.webdriver.common.by import By
from PageObjectModule import HomePage
from PageObjectModule import SigninPage
from Reusable import Reusablee
from PageObjectModule import Webucatorpoi


class TestWebucator:
    def launchwebucatorapplication1(self):
        global driver
        driver = webdriver.Chrome(Reusablee.readxmltestdata("chromepath"))
        driver.implicitly_wait(10)
        driver.get(Reusablee.readxmltestdata("url"))
        driver.maximize_window()

    def featurecoures(self):
        # Validte feature course header
        driver.find_element(By.XPATH, Webucatorpoi.featurecoures()).is_displayed()

    def closeapplication(self):
        driver.quit()


obj = TestWebucator()
obj.launchwebucatorapplication1()
obj.closeapplication()
