describe './bin/play' do
  it 'evokes #play passing in `board` as an argument' do
    allow($stdout).to receive(:puts)

    expect(self).to receive(:play).with(kind_of(Array))

    run_file("./bin/play")
  end
end
