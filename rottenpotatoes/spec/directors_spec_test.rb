require_relative 'rails_helper'


require_relative '../app/controllers/movies_controller'

describe 'Rspec tests for Director column modifications' do
    describe MoviesController, type: :controller do
            it 'Creates movie instances and checks the same_directors function does not break' do
                post :create, {:movie => {:title => 'Goodfellas', :rating => 'R', :director => 'Martin Scorsese', :id => 1}}
                post :create, {:movie => {:title => 'Raging Bull', :rating => 'R', :director => 'Martin Scorsese', :id => 2}}
                post :create, {:movie => {:title => 'Shrek', :rating => 'PG', :director => '', :id => 3}}
                
                
                post :same_directors, {:id => 1}
                expect(response.status).to eq(200)
                
                post :same_directors, {:id => 3}
                expect(response.status).to eq(200)
            end
    end
end
