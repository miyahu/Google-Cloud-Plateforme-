### Lister ses instance

```
gcloud compute instances list
NAME     ZONE            MACHINE_TYPE   PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP     STATUS
tagada1  europe-west1-b  f1-micro                    10.132.0.2   130.211.56.2    TERMINATED
tagada2  europe-west1-b  n1-standard-1               10.132.0.3   130.211.91.95   TERMINATED
tagada3  europe-west1-b  f1-micro                    10.132.0.4   23.251.131.216  TERMINATED
```

### Démarrer toutes ses instances
```
gcloud compute instances start tagada1 tagada2 tagada3
Updated [https://www.googleapis.com/compute/v1/projects/annular-bucksaw-128715/zones/europe-west1-b/instances/tagada1].
Updated [https://www.googleapis.com/compute/v1/projects/annular-bucksaw-128715/zones/europe-west1-b/instances/tagada2].
Updated [https://www.googleapis.com/compute/v1/projects/annular-bucksaw-128715/zones/europe-west1-b/instances/tagada3].
```
### Supprimer une instance
```
gcloud compute instances delete tagada2
The following instances will be deleted. Attached disks configured to 
be auto-deleted will be deleted unless they are attached to any other 
instances. Deleting a disk is irreversible and any data on the disk 
will be lost.
 - [tagada2] in [europe-west1-b]

Do you want to continue (Y/n)?  Y

Deleted [https://www.googleapis.com/compute/v1/projects/annular-bucksaw-128715/zones/europe-west1-b/instances/tagada2].
```
