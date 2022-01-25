function url
  echo input_url:
  read url
  set title (curl -s $url | grep -Eo "<title>(.+?)<\/title>" | sed -e 's/<[^>]*>//g')
  echo [$title]\($url\) | pbcopy
end

