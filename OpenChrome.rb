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


#accedemos a las opciones de un select 
MisOpciones = Navegador.select_list(:id => 'opciones').options

puts "\nHay #{MisOpciones.length} opciones"

MisOpciones.each do |option|
	puts "Tengo una opcion con el valor #{option.value}"
	puts "Valor de la opcion: #{option.text}"
	puts ' '
end


#si agregamos un return, nos devolvera el valor del metodo a ejecutar
#los metodos pueden estar en un archivo JS por separado

#que podemos hacer con JQuery
MiCadena = Navegador.execute_script("return Cadena()")

puts MiCadena
sleep()

