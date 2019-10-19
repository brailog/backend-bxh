class Company
    include HTTParty
    require_relative '../hooks/company_hook'
    base_uri 'http://localhost:3000'

    def initialize(body)
        @options = {:body => body}
    end

    def postCompany
        self.class.post('/companies',@options)
    end
end