from time import sleep

from selenium import webdriver
from selenium.webdriver.common.by import By


class Day2TestScripts:
    def launchmychromebrowser(self):
        driver = webdriver.Chrome(r"C:/New Softwares/chromedriver_win32/chromedriver")
        driver.implicitly_wait(10)
        driver.get("https://www.google.com")
        driver.maximize_window()

        i_am_feeling = driver.find_element(By.NAME, "btnI")
        i_am_feeling.is_displayed()
        print("Google Page logo is getting displayed")
        i_am_feeling.click()

        google_logo = driver.find_element(By.CLASS_NAME, "lnXdpd")
        google_logo.is_displayed()
        print("Google Page logo is getting displayed")

        search_in_google = driver.find_element(By.NAME, "q")
        search_in_google.send_keys("Robot Framework")
        sleep(5)
        print("Google Page logo is getting displayed")

        driver.find_element(By.XPATH, "//a[text()='Contact Us']").click()

        driver.quit()
        print("Google Browser has launched successfully...")

    def techedtrainings(self):
        driver = webdriver.Chrome(r"C:/New Softwares/chromedriver_win32/chromedriver")
        driver.implicitly_wait(10)
        driver.get("https://techedtrainings.com/contact/")
        driver.maximize_window()

        submitbuttonpro = driver.find_element(By.XPATH, "//button[contains(.,'submit ')]")
        print("Font family of Sumbit is : " + submitbuttonpro.value_of_css_property("font-family"))
        print("Font family of Sumbit is : " + submitbuttonpro.value_of_css_property("color"))
        print("Font family of Sumbit is : " + submitbuttonpro.value_of_css_property("background"))


obj = Day2TestScripts()
#obj.launchmychromebrowser()
obj.techedtrainings()
