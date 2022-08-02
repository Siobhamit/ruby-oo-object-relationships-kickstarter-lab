class Backer
    attr_accessor :projects
    attr_reader :name
@@backers = []

    def initialize(name)
        @name = name
        @@backers << self
    end

    def back_project(project)
        ProjectBacker.new(project, backer = self)
    end

    def backed_projects
            pb = ProjectBacker.all.select{|pb| pb.backer == self}
            pb.map{|pb| pb.project}
        end
        

end

