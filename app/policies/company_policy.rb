class CompanyPolicy
    attr_reader :user, :company
  
    def initialize(user, company)
      @user = user
      @company = company
    end

    def show?
        true
    end
  
    def edit?
        company.users.ids.include? user.id 
    end

    def update?
        company.users.ids.include? user.id 
    end

    def destroy?
        company.users.ids.include? user.id 
    end
  end