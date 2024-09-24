# Scenario: Checking for the status of Web page Status and if you see Dwon restart the Application
# Question: Write a Bash script to check if website status and if you see the website is down then restart the application running in kubernetes
# If the website is down then restart the Pod"
# website = www.irfanpage.com

# /bin/bash/
website = "http://irfanpage.com"

status_code=$(curl --write-out %{http_code} --silent --output /dev/null $website)

if [ "$status_code" -ne 200 ] ; then
  echo "The website is down"
  # Use the `mail` command correctly
  echo "The website is down" | mail -s "Website Status" -r "sender@example.com" "receiver@example.com"
  # Use the `kubectl` command correctly
  # Replace `my-pod` with the name of your pod
  kubectl delete pod my-pod
else
  echo "No action required"
fi

