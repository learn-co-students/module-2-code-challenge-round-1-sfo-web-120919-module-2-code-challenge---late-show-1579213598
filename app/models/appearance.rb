class Appearance < ApplicationRecord


	belongs_to :episodes
	belongs_to :guests

# ### 6. Appearance Rating Validation

# The rating on an Appearance should be between 1 and 5 (inclusive - `1` and `5` are okay).

# - Add a validation to ensure that the rating is between 1 and 5.
# - Add handling for this error to the Appearance create action.
# - The validation error should be shown on the Appearance creation form when a user attempts to save an appearance with an invalid rating.


# A Guest should only appear on a given Episode once.

# - Add a validation to Appearance to ensure that each Guest can only appear once on the same Episode.

validates :rating, :numericality => { :less_than 6}
validates :rating, :numericality => { :greater_than 0}
validates :


	def store_numeric_rating
		@numeric_rating
	end
end
# ### 2. Appearance Model

# To log that a specific Guest appeared on a certain Episode, we need to create the #Appearance model. **Make the necessary updates to the schema and models** so that:

# - Guest can appear on many episodes
# - Episode can have multiple guests
# - Appearance stores a numeric rating