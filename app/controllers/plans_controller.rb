class PlansController < ApplicationController
    def index #get "/plans"
        render json: PlanSerializer.new(Plan.all).serializable_hash
    end

    def show #get "/plans/:id"
        render json: serialized_plan
    end

    def ordered
        render json: Plan.sort_desc_by_title
    end

    def create
        @plan = current_user.plans.create!(plan_params)
        render json: serialized_plan, status: 201
    end

    def update
        if current_user.plans.include?(@plan)
            @plan&.update!(plan_params)
            render json: serialized_plan
        else
            no_route
        end
    end

    def destroy
        if current_user.plans.include?(@plan)
            if @plan&.destroy
                render json: {message: "Successfully destroyed plan!"}
            else
                render json: {error: @plan.errors.full_messages.to_sentence}
            end
        else
            no_route
        end
    end

    private

    def find_plan
        @plan = Plan.find(params[:id])
    end

    def serialized_plan
        @plan.to_json
    end

    def plan_params
        params.require(:plan).permit(:date)
    end

end
