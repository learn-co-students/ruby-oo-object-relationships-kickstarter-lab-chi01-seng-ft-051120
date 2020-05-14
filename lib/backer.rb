class Backer 

    attr_reader :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects 
        my_projects = [] 
        ProjectBacker.all.each do |project|
        if project.backer == self
            my_projects << project.project
        end 
    end 
        my_projects 
    end 

end 