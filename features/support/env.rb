require 'serverspec' 
include RSpec::Matchers
include Serverspec::Helper::Exec  # リモートが対象ならここはSsh
include Serverspec::Helper::DetectOS