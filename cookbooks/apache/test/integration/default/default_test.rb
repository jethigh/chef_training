# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80) do
  it { should be_listening }
end

describe command('sudo service httpd status') do
 its('stdout') {should match /is running/}
end

describe command('curl localhost') do
 its('stdout') {should match /Hello/}
 its('stdout') {should match /IPADDRESS/}
 its('stdout') {should match /HOSTNAME/}
end

