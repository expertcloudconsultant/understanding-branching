# understanding-branching
Practical Hands-On to Understanding Branching

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent



In a new admin elevated PowerShell window, ensure the ssh-agent is running. You can use the "Auto-launching the ssh-agent" instructions in "Working with SSH key passphrases", or start it manually:

# start the ssh-agent in the background
Get-Service -Name ssh-agent | Set-Service -StartupType Manual
Start-Service ssh-agent



In a terminal window without elevated permissions, add your SSH private key to the ssh-agent. If you created your key with a different name, or if you are adding an existing key that has a different name, replace id_ed25519 in the command with the name of your private key file.

#add key to .ssh folder - replace id_ed25519 with name of private key file. in your case - netauth_labs
ssh-add c:/Users/YOU/.ssh/id_ed25519

```
/.ssh/config  #file update
Host github.com-expertcloudconsultant
  HostName github.com
  User git
  IdentityFile "C:/Users/Samuel Oppong/.ssh/netauth_labs"


```
--> git remote set-url origin git@github.com-expertcloudconsultant:expertcloudconsultant/understanding-branching.git
--> git push -u origin creating-first-file-local




