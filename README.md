# DBConnect

Simple PHP DB connection script.

### Get started

1. Clone the repo.
2. Create a database in your mysql client. I've called mine `db`.
3. Run the `/db_schema/example-users.sql` file to get a load of expample users in a table.

### Run

On OSX, in the terminal, `cd` into the project.
Run:

```shell
php -S localhost:8888
```

Now you can go to localhost:8888 and see your project running.

### Usage

After including/requiring `/includes/db.php` you can use:
```php
$conn = new Connect("YOUR_DB_NAME_HERE");
```
to connect to any database you want
