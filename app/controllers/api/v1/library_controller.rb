module Api
    module V1
        class LibraryController < ApplicationController

            # index function
            def index
                books = Library.order('created_at DESC')
                render json: {
                    status: 'SUCCESS',
                    message: 'Loaded Book Information',
                    data: books
                }, status: :ok
            end

            #show function
            def show
                book = Library.find(params[:id])
                render json: {
                    status: 'SUCCESS',
                    message: 'Loaded Book Information',
                    data: book
                }, status: :ok
            end

            #create function
            def create
                book = Library.new(library_params)
                
                if book.save
                    render json: {
                        status: 'SUCCESS',
                        message: 'Saved Book Information',
                        data: book
                    }, status: :ok
                else
                    render json: {
                        status: 'ERROR',
                        message: 'Failed Saved Book Information',
                        data: book.errors
                    }, status: :unprocessable_entity
                end
            end

            # destroy function
            def destroy
                book = Library.find(params[:id])
                book.destroy
                render json: {
                    status: 'SUCCESS',
                    message: 'Deleted Book Information',
                    data: book
                }, status: :ok
            end

            #put function
            def update
                book = Library.find(params[:id])

                if book.update_attributes(library_params)
                    render json: {
                        status: 'SUCCESS',
                        message: 'Updated Book Information',
                        data: book
                    }, status: :ok
                else
                    render json: {
                        status: 'ERROR',
                        message: 'Failed Updated Book Information',
                        data: book.errors
                    }, status: :unprocessable_entity
                end
                
            end


            private
            def library_params
                params.permit(:title, :description)
            end
        end 
    end
end