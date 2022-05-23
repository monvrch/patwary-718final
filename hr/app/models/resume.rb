class Resume < ApplicationRecord
    
has_many :skills, dependent: :destroy
has_many :languages, dependent: :destroy
has_many :experiences, dependent: :destroy
has_many :educations, dependent: :destroy
    
end
