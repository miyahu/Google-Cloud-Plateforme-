# Communication avec les instances

Il y a 3 moyens de communiquer avec les instances 

* en utilisant le nom DNS de l'instance (*instance name* );  
* en utilisant un réseau d'instance (*instance's network*) ;
* en utilisant l'adresse IP externe (*External IP addresses*);


## instance name
C'est le mécanisme recommandée par google.<br />
Si une instance est detruite puis recréé, l'IP changera (IP éphemère), le mécanisme *instance name* palie à ce problème en associant la nouvelle instance à l'ancien nom. 
 
### Cas d'utilisation 

Créer un enregistrement DNS de type CNAME pointant vers le nom de l'instance.

### One liners
N/A

[//]: # ### Recommandé quand ...

## instance's network (*network IP address*)

Les *network IP address* ne sont adressables que des instances présentes dans ce réseau.
<br />
L'adresse de réseau sera résilié dans le cas d'une suppression suivi d'une création d'instance.
<br />
En cas de reboot, l'adresse de réseau est conservée.  
<br />
Chaque instance à une adresse IP unique sur le réseau et cette adresse est automatiquement assignée par GCE lors de la création de l'instance. 
Les instances d'un même réseau pourrons communiquer via le nom d'instance sur ces IP internes. 

### Cas d'utilisation 

Typiquement, équivalent du LAN ou des réseaux dit de confiances, car interne. 

### One liners
N/A

## *External IP addresses

Si vous avez besoin de communiquer avec des instances présentes sur d'autres réseaux ou si vous voulez joindre cette IP d'un réseau en dehors de Google. 

### propriétés

Il y a deux type d'external IP:
* static external
* ephemeral external 

#### static external

*static external* seront assigné à un projet de long terme (et non une campagne courte)<br />
Ce type d'adresse reste attaché à une instance même quand celle-çi est éteinte. 


#### ephemeral external
*ephemeral external* reste assignée à une instance tant que cell-çi n'est pas redémarrée ou terminée, dans le cas contraire l'adresse IP est résiliée.

### Cas d'utilisation 

Créer un enregistrement DNS de type A pointant vers l'adresse IP de l'instance.

### One liners

Lister les *static external IP* associer à votre projet :

    gcloud compute addresses list --region europe-west1

## Limitations

* Static external IP ne peuvent être assignée qu'à une ressource ; 
* Il n'y a pas moyen dire si une adresse IP est statique ou éphèmère après qu'elle est été assignée à une ressource  

## tarifs

Complexes :-) par exemple pour 2 instances GCE :
* si elles sont sur la même région, c'est la tarification *Egress between zones in the same region* qui s'appliquera, même si elles sont dans la même zone.  
* si elles sont sur des régions différentes, c'est la tarification *Egress between regions within the US* qui s'appliquera.  
* si elles sont sur des continents différents, c'est la tarification *Internet Egress pricing* qui s'appliquera.
* le trafic entrant - Ingress - n'est pas facturé

Recommandation :
* Il faut donc faire communiquer les instances sur leurs réseau interne.

[pricing](https://cloud.google.com/compute/pricing#network)
