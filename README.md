## Personal Trainer App - Backend Rails
This is my phase 5 project App. The app allows a Personal Trainer to setup their clients, create exercises and upload photos/videos, generate workout templates and schedule workouts and link to clients and workout templates. 

## Limitations
- Add clients and exercises you cannot upload images/vidoes at the same. There needs to be a record to attach to. This needs more work to allow file upload on form submission. 
- On the Program schedules the select boxes lookup the client and workout templates. These work but initially do not load what they are linked to already. If you click the select box and click away it loads. This is due to the selectbox data load, I need to store the lists with useState first and then reference this I think but needs more work to fix. 

## Dependancies
- Db is sqlite3
- Active Storage for storing data locally
- Built on ruby 2.6.1p33

## Install Steps
- Download and run bundle install
- Make local server run on port 3001 or change
- rails s


