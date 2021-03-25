from selenium.webdriver import ActionChains
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
import time


def login(driver, user_login, password):

    driver.get("https://www.instagram.com/accounts/login/")

    waiting = WebDriverWait(driver, 15)
    waiting.until(EC.presence_of_element_located((By.XPATH, "//div/button[@type='submit']")))

    username = driver.find_element_by_name('username')
    username.send_keys(user_login)
    pwd = driver.find_element_by_name('password')
    pwd.send_keys(password)
    driver.find_element_by_xpath("//div/button[@type='submit']").click()

    waiting.until(EC.presence_of_element_located((By.XPATH, "//div/img[@alt='Instagram']")))


def _get_info(browser, url_link, info):
    browser.get(url_link)

    waiting = WebDriverWait(browser, 15)
    waiting.until(EC.presence_of_element_located((By.XPATH, "//li/a[contains(@href, '%s')]" % info)))

    browser.find_element_by_xpath("//li/a[contains(@href, '%s')]" % info).click()

    waiting.until(EC.presence_of_element_located((By.XPATH, "//div[@role='dialog']//div[@class='PZuss']")))

    fBody = browser.find_element_by_xpath("//div[@role='dialog']//div[@class='PZuss']")
    actionChain = ActionChains(browser)
    number_of_following = 0
    while_number = 1
    fBody.click()

    while number_of_following < while_number:
        number_of_following = len(fBody.find_elements_by_css_selector('li'))
        for i in range(6):
            actionChain.send_keys(Keys.DOWN).perform()
        time.sleep(0.4)
        while_number = len(fBody.find_elements_by_css_selector('li'))

    following_elems = browser.find_elements_by_xpath("//div/ul//li//span/a")

    return [e.get_attribute('href') for e in following_elems]

# from https://stackoverflow.com/questions/47211939/scroll-down-list-instagram-selenium-and-python/50313947