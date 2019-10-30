Before '@project' do 
    @name = Faker::Project.name
    @description = Faker::Project.catch_phrase
    @link1 = Faker::Project.catch_phrase
    @link2 = Faker::Project.catch_phrase 
    @category = Faker::Project.category

    @body = {
            project: {
                "name":@name,
                "description":@description,
                "link1":@link1,
                "link2":@link2,
                "category":@category
            }               
    }
    @project = Project.new(@body)
end
