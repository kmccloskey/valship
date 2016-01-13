# Shipped: Validations
### Objective

Create a Rails application for shippers to help them organize all of the ships in their ﬂeet, with a user login system using Devise. The application should be able to, at its most basic, allow users to:
* Sign Up and Login
* add new boats to their proﬁle, meant to be managed by that user, including a boat name, amount of containers able to ship, and current boat location
* assign "jobs" to boats, including containers needed, cargo, origin, cost for job, and destination

### Once the basics are setup, add some validations
* Boats:
  - Must have a unique name
  - locations must be pulled from a valid list of locations (use a hard-coded list)
  
* Jobs:
  - must have a unique name
  - cost must be above $1000 for each job
  - cargo description must be at least 50 characters
  - origin and destinations must be pulled from a valid list of locations (use a hard-coded list)
  

## Group Project
### Kyle McCloskey
