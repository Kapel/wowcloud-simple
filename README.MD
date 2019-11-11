# WoWcloud-simple - a IaaS version of your World of Warcraft private server

0. Install
To make use of these scripts you'll need:
1) keypair for connecting (read about private/public key) - change in terraform/keys
2) AWS account + AWS CLI configured
3) terraform (0.12) and ansible (any fairly new version) installed
4) about 30 minutes of time

1. Running
When you've prepared everything than run from the terraform dir: 
1) terraform init
2) terraform plan
3) terraform apply (--parallelism=number_of_cores_on_your_computer)

Modify the realmlist on your computer with the elastic IP and you're good to go.
(when you're finished - terraform destroy, or just stop the EC2 instance)

1. General
This is a PoC of WoW Infrastructure made by fans. I just show my skills (or their lack) in automation, cloud, containerization etc. This is my small contribution to the community I've grew up with and people who helped me to go on my IT path in the first place. The intrest of this project is clearly fun & educational.

2. Concepts
WoW is a MMORPG game created by Blizzard. Played for milions of players on public servers and many on private servers. As a person who never worked for Blizzard I'll try to recreate the world by using automation and cloud.

To run the WoW server you'll need:
1) authserver - a server that authorizes the players, semi router for server<->user router
2) worldserver - the actual game server. Hosts a realm which players are connected to.
3) DB server - stores all players date (different schemes)

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
- Cloud - easy to set up for PoC and kill it after some time. Fast scaling and adding more resources. 


6. Links:

1) http://www.azerothcore.org
2) https://www.trinitycore.org/
3) https://www.youtube.com/watch?v=hCsEHYwjqVE - how services at Blizzard communicate