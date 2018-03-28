describe command('/bin/date +%Z') do
  its('stdout') do
    should match(/MSK/)
  end
end

describe file('/tmp/date.log') do
  it { should exist }
  it { should be_file }
end
