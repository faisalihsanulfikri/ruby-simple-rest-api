module Api
    module V1
        class SessionController < ApplicationController
            def create                
                user = User.where(email: params[:email]).first

                coba = false

                if user.valid_password?(params[:password])
                    render json: user.as_json(only: [:email, :authentication_token]), status: :created
                else
                    head(:unauthorized)
                end
            end

            def destroy
                
            end

        end
    end
end