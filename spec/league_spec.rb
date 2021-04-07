require './lib/player'
require './lib/team'
require './lib/league'

RSpec.describe League do
  it 'exists' do
    premier = League.new("Premier League")

    expect(premier).to be_instance_of(League)
  end

  it 'has attributes' do
    premier = League.new("Premier League")

    expect(premier.name).to eq("Premier League")
    expect(premier.teams).to eq([])
  end

  it 'has teams' do
     roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
     sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
     richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
     premier = League.new("Premier League")

     expect(premier.name).to eq("Premier League")
     expect(premier.teams).to eq([])
  end

  it 'can add teams' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    #manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
    premier = League.new("Premier League")
    #premier.add_team(manchester)

    expect(premier.add_team(richmond)).to eq([richmond])
  end

  it 'has multiple teams' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
    premier = League.new("Premier League")
    premier.add_team(richmond)
    premier.add_team(manchester)

    expect(premier.teams).to eq([richmond, manchester])
  end
end
