class Pet < ActiveRecord::Base
  as_enum :species, :cat => 0, :dog => 1, :other => 2
end
