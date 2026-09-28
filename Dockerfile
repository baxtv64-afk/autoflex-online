# AutoFlex — espace en ligne (modèle Railway « Déployer »).
# Ce dépôt ne contient que la recette : le logiciel lui-même est téléchargé depuis getautoflex.com au moment
# de la construction (même version que les installateurs Mac / Windows). Une clé de licence AutoFlex est
# nécessaire pour l'utiliser : https://getautoflex.com
FROM python:3.12-slim

# curl_cffi (dépendance d'instagrapi) s'appuie sur libcurl à l'exécution.
RUN apt-get update \
 && apt-get install -y --no-install-recommends libcurl4 ca-certificates \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app
ARG AUTOFLEX_PACKAGE=https://getautoflex.com/telecharger/autoflex-online.tar.gz
ADD ${AUTOFLEX_PACKAGE} /tmp/autoflex-online.tar.gz
RUN tar -xzf /tmp/autoflex-online.tar.gz -C /app \
 && rm /tmp/autoflex-online.tar.gz \
 && pip install --no-cache-dir -r requirements.txt

# Les données (comptes, connexions Instagram, vidéos) vivent sur le VOLUME monté sur /data : jamais dans
# l'image, sinon chaque redéploiement les effacerait.
ENV REELS_DATA_DIR=/data \
    REELS_HOST=0.0.0.0 \
    AUTOFLEX_HOSTED=1 \
    PYTHONUNBUFFERED=1
EXPOSE 8080
CMD ["python", "-u", "-m", "reelsmanager"]
