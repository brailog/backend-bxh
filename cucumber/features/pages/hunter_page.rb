class Hunter
    include HTTParty
    require_relative '../hooks/hunter_hook'
    base_uri 'http://localhost:3000'

    def initialize(body)
        @options = {:body => body}
        @options2 = {}
    end

    def postHunter
        # Método que simula o método POST
        self.class.post("/hunters",@options)
    end

    def getRandomId
        # Método recursivo para retornar um ID valido para usar como teste.
        json = self.class.get("/hunters",@options2)
        randId = rand json.first["id"]..json.last["id"]
        checkid = getHunter(randId)
        if checkid.code == 404 # Se o CODE retornar 404 isso quer dizer que não encontrou um ID entre os aleatorios
            getRandomId        # Então de forma recursiva a função procurar um novo
        else
            randId
        end
    end

    def getHunter (id)
        self.class.get("/hunters/#{id}", @options2)
    end

    def putHunter(id)
        self.class.put("/hunters/#{id}",@options)
    end

    def deleteHunter(id)
        self.class.delete("/hunters/#{id}",@options2)
    end
end
