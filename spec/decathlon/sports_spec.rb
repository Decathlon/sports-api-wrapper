RSpec.describe Decathlon::Sports do
  it 'has a version number' do
    expect(Decathlon::Sports::VERSION).not_to be nil
  end

  it 'returns all sports' do
    results = Decathlon::Sports.all
    expect(results['data'].length).to be > 0
  end

  it 'finds a sport' do
    sport = Decathlon::Sports.find(175)
    expect(sport['data']['id']).to eq(175)
    expect(sport['data']['attributes']['name']).to eq('Ice hockey')
  end

  it 'returns recommendations' do
    recommendations = Decathlon::Sports::Recommendations.get(175)
    expect(recommendations).to be_instance_of(Array)
    expect(recommendations.length).to eq(3)
  end
end
