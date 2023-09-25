# Sandbox deployment

The purpose of this project is to deploy a django app via Docker.

## Usage

1. Clone the repo in mode `--recurse-submodules`
2. Add `.env` file at the root of `django_app`
```
HOST=<host>
DJANGO_ENV=<prod or dev>
POSTGRES_PASSWORD=<password>
POSTGRES_USER=<username>
POSTGRES_DB=<db_name>
```

3. Complete the `locale/fr_FR/LC_MESSAGES/django.po` file with your translations.  
4. Potentially run `chmod +x run.sh`  
5. Run `docker compose up` --> see [docker compose](https://docs.docker.com/compose/)  

## Starting state of the project

After registration and login, the todolist application is ready to use but **for one list only**.  
We can create a list and check off each item when it's done.  
When everything is done, you have to erase everything to make a new one.  
Not really practical.  

The objective will therefore be to create a functionality (in production) to allow a user to create a maximum of 3 **named task lists**.  

The possibility of unlimited creation will be possible from a premium subscription.  

