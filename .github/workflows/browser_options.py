from selenium import webdriver
from selenium.webdriver.chrome.options import Options

def get_chrome_options():
    chrome_options = Options()
    chrome_options.add_argument("--headless")
    chrome_options.add_argument("--disable-gpu")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--disable-dev-shm-usage")
    return chrome_options

def open_browser(url):
    chrome_options = get_chrome_options()
    driver = webdriver.Chrome(options=chrome_options)
    driver.get(url)
    return driver
