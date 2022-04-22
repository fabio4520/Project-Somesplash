## escribe el name

```
rails g model Category name description:text
rails g model Photo title subtitle category:references
rails g model Comment body:text
```

## escribe el name :v

```
rails g migration AddColumnToCategory photos_count:integer
rails g migration AddColumnToPhoto comments_count:integer
```

## polymorphic

```
rails generate migration AddCommentableToComments commentable:references{polymorphic}

```

## Controladores

```
rails g controller photo
rails g controller category
```

<!-- RAILS.APLICATION.ROUTES -> en el archivo config/routes.rb
 get "/photo", to: "photo#index"-->

<!-- RAILS.APLICATION.ROUTES
 get "/category", to: "category#index"-->
