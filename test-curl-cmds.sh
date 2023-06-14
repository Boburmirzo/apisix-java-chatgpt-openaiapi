# Test without token
curl http://localhost:9080/ask-me-anything -X POST -d ' \
{
   "prompt":"What is Apache APISIX?"
}'

# Claim a new JWT token
curl -i http://localhost:9080/login?key=appsmithuser@gmail.com

# Test with JWT token
curl -i http://localhost:9080/ask-me-anything -H 'Authorization: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2ODY4MTAwNjQsImtleSI6InVzZXIta2V5In0.L03lBFPVwthb_r8uo43bizCLnFULRfcodS84FZFn2x8' -X POST -d '
{
   "prompt":"What is Apache APISIX?"
}'