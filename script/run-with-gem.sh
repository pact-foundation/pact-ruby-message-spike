bundle exec rackup -p 9393 provider-interface.ru &
pid=$!
sleep 2
bundle exec pact-provider-verifier message-pact.json --provider-base-url=http://localhost:9393
kill -9 $pid