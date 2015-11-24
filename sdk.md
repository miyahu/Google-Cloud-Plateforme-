https://cloud.google.com/sdk/?hl=en

En utilisateur (non root)

    curl https://sdk.cloud.google.com | bash

Le répertoire suivant sera créé :
    ~/google-cloud-sdk/README 

On relance le shell pour prendre en compte les nouveautés:

    exec -l $SHELL
    gcloud init

Avec gcloud init, impossible de créer un nouveau projet !!!!
De même, avec la commande :

    gcloud alpha projects create "mon projet"

Cela ne passe pas - problème de permission

Créé-le via le dashboard

Annexe

<pre>
The Google Cloud SDK contains tools and libraries that allow you to create and
manage resources on Google's Cloud Platform, including App Engine, Compute
Engine, Cloud Storage, Cloud SQL, and BigQuery.

For more information on how to set up and use the Cloud SDK, please see:
  https://developers.google.com/cloud/sdk


System Requirements:
  - The Cloud SDK for Python and for Go requires Python 2.7.x.
  - The Cloud SDK for Java requires Java 1.7+ and Python 2.7.x.
  - The SDK runs on Windows, Mac OS X, and Linux. Some of the individual tools
    bundled with the Cloud SDK might have more stringent requirements.
</pre>
