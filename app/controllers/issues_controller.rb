class IssuesController < ApplicationController

    def index 
        @issues = Issue.all
        @issue = Issue.new
    end


    def create 
        @issue = Issue.new(issue_params)
        
        respond_to do |format|
        if @issue.save 
           format.html { redirect_to issues_url, notice: "Issue was successfully created." }
        else 
            format.html { render :new, status: :unprocessable_entity }
        end
      end
    end


    def edit
        @issue = Issue.find(params[:id])
      end
    
    def update
        @issue = Issue.find(params[:id])
    
        respond_to do |format|
          if @issue.update(issue_params)
            format.html { redirect_to issues_url, notice:  "Issue was successfully updated" }
          else
            format.html { render :edit, status: :unprocessable_entity }
          end
        end
    end
    
    def destroy
        @issue = Issue.find(params[:id])
        @issue.destroy
    
        redirect_to issues_url, notice:  "Issue was successfully deleted."
      end
    

    def toggle
     @issue = Issue.find(params[:id])
     @issue.update(completed: params[:completed])

     render json: {message: "Success"}

    end

    


    private 

    def issue_params
        params.require(:issue).permit(:title, :description, :priority, :assignee, :status, :completed)
    end
end
