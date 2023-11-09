class IssuesController < ApplicationController

    def index 
        @issues = Issue.all
        @issue = Issue.new
    end


    def create 
        @issue = Issue.new(issue_params)
        
        if @issue.save 
            redirect_to issues_url, notice: "Issue was successfully created."
        else 
            render :new, status: :unprocessable_entity
        end
      end
    end


    private 

    def issue_params
        params.require(:issue).permit(:title, :description, :priority, :assignee, :status)
    end

