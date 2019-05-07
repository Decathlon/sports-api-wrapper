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

  it 'returns filtered results' do
    results = Decathlon::Sports.filter(decathlon_id: 175)
    expect(results['data'].first['attributes']['decathlon_id']).to eq(175)
  end

  it 'returns recommendations' do
    recommendations = Decathlon::Sports::Recommendations.get(175)
    expect(recommendations).to be_instance_of(Array)
    expect(recommendations.length).to eq(3)
  end

  it 'returns recommendations' do
    recommendations = Decathlon::Sports::Recommendations.location(175, 'Montreal', 'CA')
    expect(recommendations).to be_instance_of(Hash)
    expect(recommendations.length).to eq(1)
  end

  it 'returns search results' do
    results = Decathlon::Sports.search('Snowboarding')
    expect(results['data'].first['id'].to_i).to eq(70)
    expect(results['data'].first['attributes']['name']).to eq('Snowboarding')
  end
end
