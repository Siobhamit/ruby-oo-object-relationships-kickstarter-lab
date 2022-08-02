class Project
attr_accessor :backers
attr_reader :title

@@projects = []

def initialize(title)
    @title = title
    @@projects << self
end

def add_backer(backer)
    ProjectBacker.new(project = self, backer)
end

def backers
    pb = ProjectBacker.all.select{|pb| pb.project == self}
    pb.map{|pb| pb.backer}
end


end