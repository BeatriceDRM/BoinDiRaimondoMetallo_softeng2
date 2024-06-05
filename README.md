# SE4HPCproject

Our project satisfies all the requests correctly. 
The only problem we have encountered was related to how the files output.txt and error.txt could be automatically exported from the cluster.

In order to solve this problem, we tried to use the following commands:

- name: Transfer files from cluster
  run: |
    ssh-keygen -f "/home/runner/.ssh/known_hosts" -R "login.g100.cineca.it"
    sshpass -p "${{secrets.CLUSTER_PASSCODE}}" scp -o StrictHostKeyChecking=no a08trb57@login.g100.cineca.it:/g100/home/usertrain/a08trb57/output.txt ~
    ssh-keygen -f "/home/runner/.ssh/known_hosts" -R "login.g100.cineca.it"
    sshpass -p "${{secrets.CLUSTER_PASSCODE}}" scp -o StrictHostKeyChecking=no a08trb57@login.g100.cineca.it:/g100/home/usertrain/a08trb57/error.txt ~
    cd
    cat output.txt

Although the action worked correctly, without giving any type of error, we were not able to find a proper solution, so we manually transfered the files.
