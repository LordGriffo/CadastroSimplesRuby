while true do

puts "Cadastro de fluxo de pessoas"
puts
puts "Nome:"
@nome = gets.chomp
puts "Idade:"
@idade = gets.chomp
puts "RG:"
@rg = gets.chomp
puts "Cidade:"
@cidade = gets.chomp
sleep 0.1
#system("cls") 		#para Windows
#system("clear")  	#para Linux

def dados
arquivo = []
arquivo << puts
arquivo << "#{Time.new}"  
arquivo << "Nome: #{@nome}".upcase
arquivo << "Idade: #{@idade}".upcase
arquivo << "RG: #{@rg}".upcase
arquivo << "Cidade: #{@cidade}".upcase
arquivo << "********************"
arquivo << puts
end

x = File.open("Dados.txt", "a+")
x.puts(dados)
x.close

puts "Dados registrados:"
puts dados
sleep 2
#system("cls")
#system("clear")
end
