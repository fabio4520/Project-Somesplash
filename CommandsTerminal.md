```
rails g model Category name description:text
rails g model Photo title subtitle category:references
rails g model Comment body:text
```

```
rails g migration AddColumnToCategory photos_count:integer
rails g migration AddColumnToPhoto comments_count:integer
```