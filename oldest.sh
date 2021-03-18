 #!/bin/bash
 echo "This is the oldest file of 3:"
 find -type f -printf '%T+ %p\n' | sort | head -n 1



