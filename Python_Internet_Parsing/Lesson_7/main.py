import os
from dotenv import load_dotenv
from selenium import webdriver
import instagram

free_usr_list = ['https://www.instagram.com/arkadiaokna/',
                 'https://www.instagram.com/bowl_coffeee/',
                 'https://www.instagram.com/soc_mir/']
some_structure = {}

if __name__ == "__main__":
    load_dotenv(".env")
    browser = webdriver.Firefox()
    try:
        instagram.login(browser, user_login=os.getenv("LOGIN"), password=os.getenv("PASSWORD"))
        for url in free_usr_list:
            followers = instagram._get_info(browser, url, 'followers')
            following = instagram._get_info(browser, url, 'following')
            some_structure[url.replace('https://www.instagram.com', '').strip('/')] = {'followers': followers,
                                                                                       'following': following}
        print(some_structure.keys())
    finally:
        browser.quit()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
