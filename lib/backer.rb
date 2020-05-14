class Backer
    attr_reader :name
    def initialize(name)
      @name = name
    end
    def back_project(project)
      ProjectBacker.new(project, self)
    end
    def backed_projects
      all_projects = [] 
      ProjectBacker.all.find_all do |each_project|
        if each_project.backer == self
          all_projects << each_project.project
        end
      end
      all_projects
    end
  end