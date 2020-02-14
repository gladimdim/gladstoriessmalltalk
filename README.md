# gladstoriessmalltalk

# You can use ZnClient to fetch a full story and parse it:

```smalltalk
| view s |
s := ZnClient new get: 'https://locadeserta.com/stories/published/krivava_pastka.json'.
view := MainViewPresenter new.
view story: (Story fromJsonString: s).
view openWithSpec 
```

It will bring up a UI which can walk through the passages, choices. It even shows the images fetched from the web :)
