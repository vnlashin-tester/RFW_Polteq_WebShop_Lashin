# browser_options.py
from selenium.webdriver.chrome.options import Options as ChromeOptions
import os

def get_browser_options():
    headless = os.getenv('HEADLESS', 'False').lower() in ('true', '1', 't')
    
    options = ChromeOptions()
    if headless:
        options.add_argument("--headless")
        options.add_argument("--no-sandbox")
        options.add_argument("--disable-dev-shm-usage")
        options.add_argument("--disable-gpu")
        options.add_argument("--window-size=1920x1080")
    return options
