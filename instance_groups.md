# Instance groups (groupe d'instance)

Un groupe d'instance est un *pool* homogène d'instance de VM.
<br />
Un groupe d'instance est créé à partir d'un template d'instance. 
<br />
Il existe deux type de groupes d'instances :
* managé
* non managé

## propriétés

Le groupe d'instance apporte les fonctionnalitées suivantes :

* autoscaling (auto-adaptativité à la charge) ;
* provisionnement et gestion simplifiée ; 
* possibilitée d'utiliser des templates ;

### autoscaling 
L'autoscaling de groupe est une fonctionnalitée permettant d'ajuster le nombre d'instance en fonction de la charge perçue.
<br />
Seul les instances de groupes managé peuvent profiter de la fonction *autoscaling*.

#### déclenchement de l'autoscaling (politique de déclenchement)
l'autoscaling peut se déclencher sur les évenements suivants :

* utilisation CPU ;
* charge du load balancer HTTP ; 
* une métrique de monitoring ;
* de multiples métriques ;

### Limite haute de basse d'instance
Il est possible de fixer une limite supérieur et inférieur d'instance pour un groupe d'instance


## One liners

Création d'une instance de groupe basé sur le template *example-template*
<pre><code>
gcloud compute instance-groups managed create example-group \
  --base-instance-name example \
  --size 3 \
  --template example-template
</pre></code>

Lister les instances de groupes
<pre><code>
gcloud compute instance-groups managed list
</pre></code>

Obtenir le descriptif d'une instance en particulier
<pre><code>
gcloud compute instance-groups managed describe example-group
</pre></code>

## Limitations
* chaque groupe d'instance ne peut accueillir plus de 500 instances 
