#!/bin/bash
#URL=http://localhost:8000/api/callcard/
URL=https://central103.org/api/callcard/
#JWT=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NidXNlcm5hbWUiOiJ0ZXN0dW5pdGVkIiwiZXhwIjoxNTY2MTA3OTg1LCJlbWFpbCI6IiJ9.iCMmjIeg3aRUYO1iVybEd8TKijAVN8I1PGzDUtg07Y0
JWT=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo1NSXNlcm5hbWUiOiJ0ZXN0dW5pdGVkIiwiZXhwIjoxNTYxMDE2MDg4LCJlbWFpbCI6IiJ9.EqBqiRaK2grY2ltjbxCkTNLoXCr4BpkCMw6xIIfHgk8
date
for i in {1..20}
do
    echo $i
    curl -X POST -H "Content-Type: application/json" -H "Authorization: JWT $JWT" --data @callcard_test.json $URL >> /dev/null 2>&1
done
date