require_relative 'app/assistants/db/seeds.rb'

# See SeedAssistant for builders.

# Seed Side Effects list into SideEffect table.
create_side_effect_list unless SideEffect.exists?
