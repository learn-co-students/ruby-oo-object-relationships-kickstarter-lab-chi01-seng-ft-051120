class Project
    attr_reader :title
    def initialize(title)
      @title = title
    end
    def add_backer(backer)
      ProjectBacker.new(self, backer)
    end 
    def backers
      all_backers = [] 
      ProjectBacker.all.find_all do |each_backer|
        if each_backer.project == self
          all_backers << each_backer.backer
        end
      end
      all_backers
    end
  end