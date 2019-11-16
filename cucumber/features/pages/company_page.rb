class Company
    include HTTParty
    require_relative '../hooks/company_hook'
    base_uri 'http://localhost:3000'

    def initialize(body)
        @options = {:body => body}
        @options2 = {}
    end

    def postCompany
        # Método que simula o método POST
        self.class.post("/companies",@options)
    end

    def getRandomId
        # Método recursivo para retornar um ID valido para usar como teste.
        len = self.class.get("/companies",@options2)
        randId = rand 1..len.length
        checkid = getCompany(randId)
        if checkid.code == 404 # Se o CODE retornar 404 isso quer dizer que não encontrou um ID entre os aleatorios
            getRandomId        # Então de forma recursiva a função procurar um novo
        else
            randId
        end
    end

    def getCompany (id)
        self.class.get("/companies/#{id}", @options2)
    end

    def putCompany(id)
        self.class.put("/companies/#{id}",@options)
    end

    def deleteCompany(id)
        self.class.delete("/companies/#{id}",@options2)
    end
end
