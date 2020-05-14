class Project 

    attr_reader :title

    def initialize(title)
        @title = title 
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers 
        my_backers = [] 
        ProjectBacker.all.each do |backer|
        if backer.project == self
            my_backers << backer.backer
        end 
    end 
        my_backers 
    end 

end 