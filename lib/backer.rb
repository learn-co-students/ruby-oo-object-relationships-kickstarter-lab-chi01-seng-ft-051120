require 'pry'
require_relative 'project_backer.rb'
require_relative 'project.rb'
class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        p_backers = ProjectBacker.all.select do |p_backer|
            p_backer.backer == self
        end
        p_backers.map do |backer_info|
            backer_info.project
        end
    end

end



