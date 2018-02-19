# LIVECODE

Let's build a simple AirBnB clone with a remote static JSON DB with:
* '/'          -> A root page listing flats
* '/flats/:id' -> A show page for a specific flat

```ruby
require "open-uri"

url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
flats = JSON.parse(open(url).read)
```

**Optional**

Add [bootstrap](https://www.bootstrapcdn.com)
