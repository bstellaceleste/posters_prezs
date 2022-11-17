## KVell+: Snapshot Isolation without Snapshots
 * SI: snapshto isolation
 * OLAP: online analytical processing
 * OLTP: online transactional processing

Le problème ici c'est l'utilisation du disque.
Dans le storage domain c'est le disque la ressource critique.
Les SI traditionnel, lorsqu'ils mettent à jour une donnée, ils créent une copie de l'ancienne au lieu de la supprimer, ce qui consomme de l'espace sur disque inutilement.
Le papier introduit OLCP (Online Commutative Processing).
Lorsqu'une donnée est updated par une transaction OLTP, son ancienne valeur est envoyée à une requête OLCP qui va exécuter la requête et supprimer l'ancienne valeur.
Le papier s'appuie sur l'observation selon laquelle les requêtes OLAP ne scannent certaines données qu'une seule fois et ne les réutilisent plus après donc pour celles ci pas besoin de les conserver on peut directement les supprimer.
C'est donc ce type de requête le scope.

## TONE: Cutting Tail-Latency in Learned Indexes
Learn indexes have been introduced to "learn" the cumulative distribution function of a given key space, and then predict the position of keys within this distribution during lookups.
Les learn indexes proposent un modèle qui 'prédit' la position des données dans un dataset.
Toutefois ils ont 1 inconvénient majeur: à chaque fois que la distribution du dataset change significativement (surtout les write-intensive workload) il faut re-entrainer le modèle; toutefois, ce n'est mm pas cet apprentissage le bottleneck (surtout si des modèles simples sont utilisés), c'est surtout les mouvements de données et la réorganisation (splits) des noeuds après l'apprentissage qui dominent la latence.
TONE propose donc une amélioration de la structure des learn indexes pour réduire la latence.
Il introduit un two-level leaf node qui absorbe les insertions et postpone l'expansion des noeuds.
Lorsque le 1er noeud est plein, on passe au second et lorsque les 2 sont pleins on les merge.

## tf.data: A Machine Learning Data Processing Framework
Le bottleneck du machine learning c le data processing
Processing data closer to storage: PIM (Process In Memory): https://www.upmem.com/ -- nouvelle techno HW / GPU

## Understanding Data Storage and Ingestion for Large-Scale Deep Recommendation Model Training
 * DSA: domain specific accelerators
 * DNN: deep neural network
 * ASIC: application specific integrated circuit
 * DSI: data storage and ingestion 
 * DLRM: deep learning recommendation model




#### Vocabulary:
* cripple: paralyser
* knobs: points, noeuds
* steadily: régulièrement, constamment
* lifeblood: moteur, élément vital
* spike: pic, point culminant
* exhibit: présente/expose [xxx exhibit diverse values/requirements]
* from now henceforth
* barring: à l'exception de/hormis
* fleet: parc/flotte/centre [production fleets]
* rationales: raisons, motifs [we present rationales behind our design - rationales for/of/about]
* tailor-made: faites sur mesure
* outlook: perspectives, visions
* panacea: panacée
* conundrum: énigme (dilemme/casse-tête)
* onset: début (from the onset of ... )