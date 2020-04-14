endpoint="https://jsonplaceholder.typicode.com/comments"
allEmails=()

RED='\033[0;31m'
NC='\033[0m' # No Color
# Query first 5 posts
for postId in {1..5};
do
  # Make API call to fetch emails of this posts's commenters
  response=$(curl -s "${endpoint}?postId=${postId}")
  echo $response
  emails=$( jq '.[].email' <<< "$response" )
  printf "${RED} $emails ${NC}"
  # Use jq to parse the JSON response into an array
  allEmails+=( $emails )
done

#echo ${allEmails[@]}
echo ${#allEmails[@]}

echo ${allEmails[5]}

# printf "I ${RED}love Stack Overflow\n"
