# Google compute engine

## Les instances

### Lister ses instances

```bash
gcloud compute instances list
NAME     ZONE            MACHINE_TYPE   PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP     STATUS
tagada1  europe-west1-b  f1-micro                    10.132.0.2   130.211.56.2    TERMINATED
tagada2  europe-west1-b  n1-standard-1               10.132.0.3   130.211.91.95   TERMINATED
tagada3  europe-west1-b  f1-micro                    10.132.0.4   23.251.131.216  TERMINATED
```

### Démarrer ses instances

```bash
gcloud compute instances start tagada1 tagada2 tagada3
```

### arrêter une instance

```bash
gcloud  compute  instances  stop master --zone europe-west4-b
```

### Supprimer une instance

```bash
gcloud compute instances delete tagada2
Do you want to continue (Y/n)?  Y
```
