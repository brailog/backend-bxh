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

    def getmaxId
        # Método que retorna o número maximo de elementos presente na API 
        len = self.class.get("/companies",@options2)
        len.length
    end

    def getCompany (id)
        self.class.get("/companies/#{id}", @options2)
    end

    def putCompany(id)
        self.class.put("/companies/#{id}",@options)
    end

    def deleteStartup(id)
        self.class.delete("/companies/#{id}",@options2)
    end
end
