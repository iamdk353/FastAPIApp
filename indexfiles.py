from opensearchpy import OpenSearch

client = OpenSearch(hosts=[{"host": "localhost", "port": 9200}], use_ssl=False)

# Fetch all documents
response = client.search(index="documents", body={"query": {"match_all": {}}})

# Print all indexed files
for hit in response["hits"]["hits"]:
    print(hit["_source"])
