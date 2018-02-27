require 'watir'
#require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path = '/Applications/Google Chrome.app/Contents/MacOS/chromedriver'

Navegador = Watir::Browser.new :chrome

Navegador.goto 'file:///Users/visita/Documents/GitHub/Node.js/html/MiPagina.html'

#escribimos sobre nuestras propiedades
#Navegador.text_field(:id => 'nombre').set 'Michii - Sama'

#accedemos a los gets del elemento
#puts Navegador.text_field(:id => 'nombre').value

MisP = Navegador.ps

MisP.each do |p|
   puts "Tengo una etiqueta con el id #{p.id}"
   puts "Valor de la etiqueta: #{p.text}"
   puts ' '
end

puts "id: #{MisP[5].id} & text: #{MisP[5].text}"
sleep()