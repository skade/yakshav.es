---
title: Using Diesel with a PostgreSQL schema (non-invasively)
---

# Using Diesel with a PostgreSQL schema (non-invasively)

## Warning first

This seems to work for me, please make sure you test your app throughly with it.

## How it works

When using a shared PostgreSQL database, it can make sense to rely on [PostgreSQL schemas](https://www.postgresql.org/docs/9.6/static/ddl-schemas.html). Sharing a database can be useful if you want to keep things in database, but also hook multiple isolated applications to it.

Schemas are basically a namespace within the database. The default schema present in every database is called `public` and is accessible by all users. When you just create a table called `users`, it will be placed in that schema. It is then also accessible as `public.users`.

```sql
SELECT * FROM public.users;
```

The reason you can query just by `users` is because PG has the idea of a search path. By default, it is set to `"$user", "public"`. For any unqualified table, it first searches the table in a schema named after the connecting user, and then the public schema. If these schemas don't exist, they are silently ignored.

Now, counter-intuitively, the `search_path` also applies when creating a table: the table will be created in the first existing schema in the search path.

So, if we can tell Diesel to set a `search_path`, we're pretty much done. It's surprisingly easy, just set the right `DATABASE_URL`.

```sh
DATABASE_URL="postgres://ubuntu:@127.0.0.1:5432/my_database?application_name=my_app&options=-c search_path%3Dmy_app"
```

Now, this is a little weird: we are actually passing a command line argument to the server. As the argument includes `=`, we have to encode it.

Finally, we need to create the database and the schema before we let Diesel work its magic. Make sure you connect using `psql` and are using the user your app will connect with.

```sql
$ CREATE DATABASE my_database;
$ \c my_database;
$ CREATE SCHEMA my_app;
```

Then do the Diesel dance:

```sh
$ diesel migration up
```

And start your app as you usually do.

Also, notice that I passed in `application_name` to the connection, which makes PG insert that name into all log statements concerning the requests of your app.

## Leftovers

To print your schema with `diesel print-schema`, use the `--schema` command line argument.

