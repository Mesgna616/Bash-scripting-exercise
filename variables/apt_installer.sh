#!/bin/bash
if [ "$#" -ne 1 ]; then
echo "Usage: $0 <package name>"
exit 1
fi
package="$1"
# Install the specified package
sudo apt install "$package"
# Check the exit code and print a message
if [ $? -eq 0 ];then
echo  "The package $package was installed successfully."
else 
 echo "Failed to install the package $package. Exit code: $?"
fi
