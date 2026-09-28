# AutoFlex — espace en ligne

Recette de déploiement d'[AutoFlex](https://getautoflex.com) sur un serveur allumé 24 h/24 (Railway), pour
les clients qui ne veulent pas laisser leur ordinateur allumé. Ce dépôt ne contient pas le logiciel : le
`Dockerfile` le télécharge depuis getautoflex.com, dans la même version que les installateurs Mac / Windows.

Une **clé de licence AutoFlex** est nécessaire (la même que sur ton ordinateur : une clé = ordinateur + espace en ligne).

## Déployer

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/dbcDdf?referralCode=LKl_D8&utm_medium=integration&utm_source=template&utm_campaign=generic)

Mode d'emploi complet : https://getautoflex.com/en-ligne/ (ou, dans le logiciel, onglet **En ligne**).
Railway demande :

| Variable | À quoi ça sert |
|---|---|
| `REELS_APP_PASSWORD` | ton mot de passe de connexion (8 caractères minimum) |
| `AUTOFLEX_LICENSE_KEY` | ta clé de licence AutoFlex |

Un volume est monté sur `/data` : c'est là que vivent tes comptes, leurs connexions Instagram et tes vidéos.
L'hébergement est facturé par Railway, à toi directement : 5 $ de crédit d'essai, puis plan Hobby à 5 $ par mois
(5 $ de consommation inclus) — en pratique 5 à 10 $ par mois pour un espace AutoFlex.

## Mettre à jour

Dans Railway : ton service AutoFlex → **Deployments** → menu ⋯ du dernier déploiement → **Redeploy**.
La dernière version d'AutoFlex est téléchargée à la construction ; tes données (sur le volume) ne bougent pas.

## Support

https://t.me/autoflex_support
