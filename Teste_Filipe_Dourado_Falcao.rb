class Comandos

    def initialize()
        @nome = "Filipe Dourado Falcão"
        @data_nascimento = "27/11/1997"
        @idade = 22
    end

    def exibirNome
        puts @nome
    end

    def exibirDataNascimento
        puts @data_nascimento
    end

    def idadeCubo
        puts @idade**3
    end

    def inverteString(string)
        puts string.reverse()
    end

    def divideString(string)
        metade = string.length/2
        puts string.slice(0,metade)
    end

    def somaDataNascimento
        soma = 0
        @data_nascimento.each_char do |c| 
            soma += c.to_i
        end
        puts soma
    end
    
    def exibirComandos()
        comando = nil
        while comando != "Parar" do
            puts "Digite o comando que deseja executar. Opções:\n"+
                 "Comando 1, Comando 2, Comando 3, Comando 4, Comando 5, Comando 6 ou Parar."
            comando = gets
            
            case comando.chomp
            when "Comando 1"
                exibirNome
            when "Comando 2"
                exibirDataNascimento
            when "Comando 3"
                idadeCubo
            when "Comando 4"
                puts "Digite alguma coisa:"
                string = gets
                inverteString(string.chomp)
            when "Comando 5"
                puts "Digite alguma coisa:"
                string2 = gets
                divideString(string2.chomp)
            when "Comando 6"
                somaDataNascimento
            when "Parar"
                break
            else
                puts "Digite um comando válido."
            end

        end
    end
end

comandos = Comandos.new
comandos.exibirComandos