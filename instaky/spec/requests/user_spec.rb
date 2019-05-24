# spec/requests/user_spec.rb

RSpec.describe "User API" do
    let!(:users) { create_list(:user, 10) }
    let(:user_id) { users.first.id }
    describe 'get list user' do
        before { get '/user'}
        
        it 'return users' do
            expect(json).not_to be_empty
            expect(json.size).to eq(10)
        end

        it 'return success status' do
            expect(response).to have_http_status(200)
        end
    end
end