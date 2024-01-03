# Exercise 2.11

- I've created volumes to modify contents of the container in the host machine.
- I've added Mongo and Redis services to the docker-compose.yml file because they're required for the app.
- App's environment variables've been updated.
- For this exercise, I've used the Chat Rooms app that I developed myself. You can find more details about the app in the following line.

# Chat-Rooms-App

It is an app where logged-in users can create chat rooms. You can add other users to these chat rooms and chat with them. Chat room and messaging features have been implemented thanks to the **Socket.io**. Chat rooms along with registered users are persisted in the **Mongo DB** except messages. I've used **session cookies** for authentication. Sessions are stored in the **Redis DB**. I've written **unit tests** for the service layer and the middlewares. I've also implemented the front end of the app to experience the Socket.io on the client.
