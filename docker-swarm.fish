#!/usr/local/bin/fish

# for i in 0 1 2; docker-machine create "node$i"; end

# docker-machine ssh node0
# docker@node0:~$ export ip=$(ifconfig eth1 | grep 'inet ' | awk '{print $2}' | awk -F ':' '{print $2}') # 192.168.99.100
# docker@node0:~$ docker swarm init --advertise-addr $ip --force-new-cluster
# 
# Swarm initialized: current node (m51j68z5ki5vauxm4qlbfmnf9) is now a manager.
# 
# To add a worker to this swarm, run the following command:
# 
#     docker swarm join --token SWMTKN-1-2l6kut578l5brcla5kym4j5sjcppkz810e9ht4boj2g0qns6lj-enzjqdxq3wy33ko1h5btfpxzc 192.168.99.100:2377
# 
# To add a manager to this swarm, run 'docker swarm join-token manager' and follow the instructions.
# docker@node0:~$ exit

# docker-machine ssh node1
# docker@node1:~$ docker swarm join --token SWMTKN-1-2l6kut578l5brcla5kym4j5sjcppkz810e9ht4boj2g0qns6lj-enzjqdxq3wy33ko1h5btfpxzc 192.168.99.100:2377
# This node joined a swarm as a worker.
# docker@node1:~$ exit

# docker-machine ssh node2
# docker@node2:~$ docker swarm join --token SWMTKN-1-2l6kut578l5brcla5kym4j5sjcppkz810e9ht4boj2g0qns6lj-enzjqdxq3wy33ko1h5btfpxzc 192.168.99.100:2377
# This node joined a swarm as a worker.
# docker@node2:~$ exit

# eval (docker-machine env node0)
# docker service create -p 80:80 --name webapp nginx

# docker service ls
# ID                  NAME                MODE                REPLICAS            IMAGE               PORTS
# hm2ptrtjhsbh        webapp              replicated          0/1                 nginx:latest        *:80->80/tcp
# ...
# hm2ptrtjhsbh        webapp              replicated          1/1                 nginx:latest        *:80->80/tcp

# http (docker-machine ip node0)
# nginx response...

# for i in 0 1 2; docker-machine rm -f "node$i"; end
