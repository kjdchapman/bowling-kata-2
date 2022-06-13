require_relative '../bowling_scorecard'

describe 'bowling scorecard' do
  it 'returns 0 given an empty string' do
    expect(score("")).to eq(0)
  end

  it 'returns 1 given "1"' do
    expect(score("1")).to eq(1)
  end

  it 'returns 2 given "2"' do
    expect(score("2")).to eq(2)
  end

  it 'returns 2 given "11"' do
    expect(score("11")).to eq(2)
  end

  it 'returns 1 given "1-"' do
    expect(score("1-")).to eq(1)
  end

  it 'returns 14 given "23 45"' do
    expect(score("23 45")).to eq(14)
  end

  it 'returns 10 given "X --"' do
    expect(score("X --")).to eq(10)
  end

  it 'returns 12 given "X 1-"' do
    expect(score("X 1-")).to eq(12)
  end
end