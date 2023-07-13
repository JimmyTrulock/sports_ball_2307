require 'rspec'
require './lib/team'

describe Team do
    it 'exists' do
        team = Team.new("Dodgers", "Los Angeles")

        expect(team).to be_an_instance_of(Team)
        expect(team.team_name).to eq("Dodgers")
        expect(team.city).to eq("Los Angeles")
    end
end

describe 'add_player' do
    it 'adds player to team roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        team.add_player(player_1)


    end
end

describe 'player_count' do
    it 'counts players in the roster' do
        team = Team.new("Dodgers", "Los Angeles")
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        team.add_player(player_1)

        expect(team.player_count).to eq(1)
        
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        team.add_player(player_2)

        expect(team.player_count).to eq(2)
    end
end

