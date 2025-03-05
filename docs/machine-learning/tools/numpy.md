# Let's have a go at Numpy

Instant prefetching is a new experimental feature that will start to fetch a
page once the user hovers over a link. This will reduce the perceived loading
time for the user, especially on slow connections, as the page will be available
immediately upon navigation. Enable it with:

```yaml
theme:
  features:
    - navigation.instant
    - navigation.instant.prefetch
```
