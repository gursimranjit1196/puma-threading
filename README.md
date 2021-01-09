# README

POC to playaround with puma threads_count's configurations. <br/>
To see the insight performance of puma threads, change the value of threads_count in puma.rb and rerun rails server and run this code in next terminal(it'll do 20 concurrent hits to local storage endpoint).

```
target=${1:-http://localhost:3000}

for i in $(seq 20)
do
    curl $target > /dev/null &
done
```


You can see as per your thread_count value in puma.rb file, your requests are served(see server logs).
