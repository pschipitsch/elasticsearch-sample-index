ElasticSearch Sample Index Data Script (Ruby)
==========================

This sample script reads from the included CSV file and adds 150 'superhero' documents to an index 'comicbook'.

I needed a way to quickly create indexes/shards and fill them with documents.

Usage
--------

* From command line, execute the script:

```
ruby elasticput.rb {CLUSTER_URL}
```

* Once complete, perform a search:

```
http://{CLUSTER_URL}/comicbook/superhero/_search?q=summary:Kent

hits: {
  total: 6,
  max_score: 0.71193624,
  hits: [
  {
    _index: "comicbook",
    _type: "superhero",
    _id: "89",
    _score: 0.71193624,
    _source: {
      name: "Clark Kent",
      summary: "Clark Kent is an American fictional character created by Jerry Siegel and Joe Shuster. ..."
  }
},
```
