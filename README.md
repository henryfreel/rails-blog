# New Project

## Set up

1. Start new Project

```
$ rails new [app-name] -d postgresql
```

2. `cd` into that project and creare your database

```
rake db:create
```

3. To run locally, start your rails server in a new tab (but in the same directory!)

```
rails s
```

4. Generate 'Page' controller, which will give you .html files, basic routes, and corresponding controller file

```
$ rails g controller Page index about
```

4. Your Routes.rb should look like this

```
#
# routes.db
#

Rails.application.routes.draw do
  
  get 'page/index'

  get 'page/about'

end

```

5. Setup root route, change your routes.rb file to only have the root route

```
#
# routes.db
#

Rails.application.routes.draw do
  
  root "pages#index"

end

```


