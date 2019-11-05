# WoWcloud-simple - a IaaS version of your World of Warcraft private server


1. General
This is a PoC of WoW Infrastructure made by fans. I just show my skills (or their lack) in automation, cloud, containerization etc. This is my small contribution to the community I've grew up with and people who helped me to go on my IT path in the first place. The intrest of this project is clearly fun & educational.

2. Concepts
WoW is a MMORPG game created by Blizzard. Played for milions of players on public servers and many on private servers. As a person who never worked for Blizzard I'll try to recreate the world by using automation and cloud.

To run the WoW server you'll need:
a) authserver - a server that authorizes the players, semi router for server<->user router
b) worldserver - the actual game server. Hosts a realm which players are connected to.
c) DB server - stores all players date (different schemes)


3. Infrastructure:
3.1) Single machine - PoC
3.1.a) baremetal / virtual / cloud
3.1.b) docker based

4. Explanation
This is a simplified version of my main project. One of the pieces. I know that a best practice would be keeping the state of the terraform infrastructure inside S3 + DynamoDB. The purpose of this is to run it straight out of the box.

5. Tools of trade
- Terraform - declare the infrastructure as a code; create networks, firewalls; DNS records and more
- Ansible - provision the machines
- Docker - create containers to run the versions of code, deploy it quickly

6. Links:

1) http://www.azerothcore.org
2) https://www.trinitycore.org/
3) https://www.youtube.com/watch?v=hCsEHYwjqVE - how services at Blizzard communicate