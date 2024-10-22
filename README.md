Todo List : Project to demonstrate
==================================

The branch [behat](https://github.com/macintoshplus/todo-list-example/tree/behat) is used to demonstrate the 
usage of Behat with Symfony Page ([[Tutoriel] Test Behat sur un projet Symfony [FR]](https://nahan.fr/tutoriel-test-behat-sur-un-projet-symfony/)).

The branch [symfony_510](https://github.com/macintoshplus/todo-list-example/tree/symfony_510) is used to demonstrate the new implementation of the Symfony Security component ([Double authentification et Symfony 5.1 [FR]](https://nahan.fr/double-authentification-et-symfony-5-1/)). 

# Requirements

* Symfony client
* Composer
* PHP 7.4 (ext: sqlite3 + Symfony requirement)
* Yarn 1.21

# Install

Clone this repository or download archive

Open a terminal and run their following commands:

```shell script
$ composer install
$ npm install
$ yarn encore dev
```

# Initialize database

On the first install, run this command to make a new database: `bin/console doctrine:database:create`

Run all migration to initialize the database (the database is already configured to use SQLite)

> Note: if you have a database from the v1.0.0 run this command: `bin/console doctrine:migrations:sync-metadata-storage`.

```shell script
$ bin/console doctrine:migration:migrate
```

Open the database with your favorite SQLite browser and add a row into the `user` table.

To define the password, use this command to encode it : `bin/console security:encode-password`

# Use in development environment

Run this command in a console (caution, the console will be busy):

```shell script
$ symfony serve
```

Open the link in your favorite web browser.

# Login

The login uses a two-factor authentication. When your browser is redirected to code form (after username/password form) read the dump value in the Symfony debug bar.
This code is the two-factor code.

# Run tests

Open a terminal and run their command after the install step :

```shell script
$ APP_ENV=test bin/console doctrine:migration:migrate
$ vendor/bin/behat
```
