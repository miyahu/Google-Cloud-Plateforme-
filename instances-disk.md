## Create a snapshot 
```
gcloud compute disks snapshot "tagada1" --snapshot-names snapshot-tagada1 --zone europe-west1-c
```

### list snapshot 
```
antonio@lapton:~$ gcloud compute snapshots list
NAME              DISK_SIZE_GB  SRC_DISK                      STATUS
snapshot-tagada1  10            europe-west1-c/disks/tagada1  READY
```
