module ApplicationHelper

    def render_if(condition, record, params)
        if condition
            render(record, params)
        end
    end

end
