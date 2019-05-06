# PHP Login

Simple PHP login/signup script.

### Get started

1. Clone the repo.
2. Create a database in your mysql client. I've called mine `db`.

### Run

On OSX, in the terminal, `cd` into the project.
Run:

```console
php -S localhost:8888
```

Now you can go to localhost:8888 and see your project running.

### Usage

After including/requiring `/includes/db.php` you can use:
```php
$conn = new Connect("YOUR_DB_NAME_HERE");
```
to connect to any database you want
