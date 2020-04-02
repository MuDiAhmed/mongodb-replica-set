#!/bin/bash
config=$(cat <<EOF
rs.initiate({
  _id: "mongo-cluster",
  members: [
    { _id: 0, host: "mongo-node-1:27017" },
    { _id: 1, host: "mongo-node-2:27017" },
    { _id: 2, host: "mongo-node-3:27017" }
  ]
});
EOF
)

sleep 10 && echo "sleeping" && mongo mongodb://mongo-node-1:27017 --eval "$config" &