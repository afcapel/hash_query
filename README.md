# HashQuery

Query a nested hash using glob expressions.

```ruby
hash = {
  'development' => {
    'user'     => 'wadus',
    'password' => 'secret',
    'database' => {
      'adapter'     => 'sqlite',
      'db_user'     => 'scott',
      'db_password' => 'tiger'
    }
  },
  'production' => {
    'user'     => 'admin',
    'password' => '1234',
    'database' => {
      'adapter'     => 'postgresql',
      'db_user'     => 'scott',
      'db_password' => 'tiger'
    }
  }
}

hash.extend HashQuery


hash.query('production.database.adapter')
# => ['production.database.adapter']


hash.query('*.database.db_*')
# => ["development.database.db_password", "development.database.db_user",
# "production.database.db_password", "production.database.db_user"]


hash.query('**.*password')
# => ["development.password", "development.database.db_password",
# "production.password", "production.database.db_password"]
```

