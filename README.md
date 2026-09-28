# AutoFlex — espace en ligne

Recette de déploiement d'[AutoFlex](https://getautoflex.com) sur un serveur allumé 24 h/24 (Railway), pour
les clients qui ne veulent pas laisser leur ordinateur allumé. Ce dépôt ne contient pas le logiciel : le
`Dockerfile` le télécharge depuis getautoflex.com, dans la même version que les installateurs Mac / Windows.

Une **clé de licence AutoFlex** est nécessaire (la même que sur ton ordinateur : une clé = ordinateur + espace en ligne).

## Déployer

Depuis le logiciel : onglet **En ligne** → « Déployer mon espace en ligne ». Ou directement avec le bouton
du modèle Railway. Railway demande :

| Variable | À quoi ça sert |
|---|---|
| `REELS_APP_PASSWORD` | ton mot de passe de connexion (8 caractères minimum) |
| `AUTOFLEX_LICENSE_KEY` | ta clé de licence AutoFlex |

Un volume est monté sur `/data` : c'est là que vivent tes comptes, leurs connexions Instagram et tes vidéos.
L'hébergement est facturé par Railway, à toi directement (de l'ordre de 5 à 10 $ par mois selon l'usage).

## Mettre à jour

Dans Railway : **Deployments → Redeploy**. La dernière version d'AutoFlex est téléchargée à la construction.

## Support

https://t.me/autoflex_support
