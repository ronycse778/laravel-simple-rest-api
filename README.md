# laravel-simple-rest-api
Very simple and easy rest api with laravel 12.x. This is tokenless API. Simply clone the project and follow the processes to setup project correctly.

<span>Test platform:</span> Php-8.2.12 with Xampp-3.3.0

Unzip env.zip file and vendor.zip file.<br>
Create database named "laravel_api".<br>
Default user: root, Pass: ""<br>
Import sql file from Data.Source folder into this db.<br><br>
Serve the project.
```text
php artisan serve
```
A postman snapshot of simple api request & response shown in Data.Source folder.


The default application URL is:

```text
http://127.0.0.1:8000
```
The API prefix is configured in `.env`:

```dotenv
PKG_API_IP=api/v1
```

Therefore, the API base URL is `http://127.0.0.1:8000/api/v1`.

## Test with curl in postman

# Get all users
```code
curl http://127.0.0.1:8000/api/v1/users
```
# Get user by ID
curl http://127.0.0.1:8000/api/v1/users/1

# Create user
curl -X POST http://127.0.0.1:8000/api/v1/users \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -d '{"name":"John Doe","email":"john@example.com","password":"secret123"}'

# Delete user
curl -X DELETE http://127.0.0.1:8000/api/v1/users/1 \
  -H "Accept: application/json"

# List users by status (0 or 1)
curl -X POST http://127.0.0.1:8000/api/v1/user-list \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -d '{"status":1}'
```

## Available endpoints

| Method | Endpoint | Purpose |
| --- | --- | --- |
| GET | `/api/v1/users` | Get all users |
| GET | `/api/v1/users/{id}` | Get one user |
| POST | `/api/v1/users` | Create a user |
| PUT | `/api/v1/users/{id}` | Update a user |
| DELETE | `/api/v1/users/{id}` | Delete a user |
| POST | `/api/v1/user-list` | Filter users by status |

## CSRF token mismatch fix

These endpoints are registered in `routes/web.php`. Web routes normally require
a CSRF token for POST, PUT, PATCH, and DELETE requests. Command-line API requests
do not send a browser CSRF token, which caused this response:

```json
{
  "message": "CSRF token mismatch."
}
```

Laravel 12 is configured in `bootstrap/app.php` to exclude only the API paths
from CSRF validation: (check Data.Source folder)

```php
->withMiddleware(function (Middleware $middleware): void {
    $middleware->validateCsrfTokens(except: [
        'api/*',
    ]);
})
```

After changing middleware or routes, clear Laravel's caches:

```bash
php artisan optimize:clear
```

Do not disable CSRF validation for normal browser forms. The exception above is
limited to URLs beginning with `/api/`.

## Troubleshooting

- **Connection refused:** Start the server with `php artisan serve`.
- **404 Not Found:** Check `PKG_API_IP=api/v1` in `.env` and run `php artisan optimize:clear`.
- **422 Unprocessable Content:** Check required fields and use a unique, valid email.
- **User not found:** Replace `1` in the URL with an existing user ID.


