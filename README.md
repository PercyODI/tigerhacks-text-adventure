# Text Adventure Simulation

## Goal

Create a text-like adventure simulation. Users do not directly control their character, but their character does it's own thing, and other events can occur.
Users may be able to influence their character and/or surroundings.

Frontend:

- Simple webpage that lets users pick a name
- If possible, allow users a selection of control
- Continuously updates with what the character and their surroundings are doing

Backend:

- Node Express app with socket.io for real-time updates
- Publishes events to be consumed by the Simulation Automation
- Receives updates from the Simulation Automation

Simulation Automation:

- Timers to kick off various events on a schedule
- Node based workers that are receiving events and responding to them

## Architecture

All application code will be docker images hosted on DockerHub.

Server will be managed with ansible, with an nginx based reverse proxy for the front and backend.
