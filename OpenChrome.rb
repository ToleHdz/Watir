require 'watir'
#require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path = '/Applications/Google Chrome.app/Contents/MacOS/chromedriver'

Navegador = Watir::Browser.new :chrome

Navegador.goto 'http://www.google.com.mx'
sleep(3)
Navegador.close