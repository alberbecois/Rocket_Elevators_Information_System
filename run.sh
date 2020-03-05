# Create a file in root path .sh
# Always start with: #!/bin/bash
# give the permissions with
# chmod 755 run.sh

#!/bin/bash

# Update Gems
bundle update

# Install Gems
bundle install

# Run Rails server
rails server