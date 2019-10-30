class Project
    include HTTParty
    require_relative '../hooks/project_hook'
    base_uri 'http://localhost:3000'

    def initialize(body)
        @options = {:body => body}
        @options2 = {}
    end

    def postProject
        # Método que simula o método POST
        self.class.post("/projects",@options)
    end

    def getRandomId
        # Método recursivo para retornar um ID valido para usar como teste.
        len = self.class.get("/projects",@options2)
        randId = rand 1..len.length
        checkid = getProject(randId)
        if checkid.code == 404 # Se o CODE retornar 404 isso quer dizer que não encontrou um ID entre os aleatorios
            getRandomId        # Então de forma recursiva a função procurar um novo
        else
            randId
        end
    end

    def getProject (id)
        self.class.get("/projects/#{id}", @options2)
    end

    def putProject(id)
        self.class.put("/projects/#{id}",@options)
    end

    def deleteProject(id)
        self.class.delete("/projects/#{id}",@options2)
    end
end
