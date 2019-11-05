Before '@project' do 
    @name = Faker::Game.title
    @description = Faker::Movies::VForVendetta.speech
    @link1 = "www."+Faker::DcComics.hero+".com"
    @link2 = "www."+Faker::DcComics.villain+".com"
    @category = Faker::Music.genre

    @body = {
            project: {
                "name":@name,
                "description":@description,
                "link1":@link1,
                "link2":@link2,
                "category":@category,
                "company_id":100.
            }
    }

    @project = Project.new(@body)
end
