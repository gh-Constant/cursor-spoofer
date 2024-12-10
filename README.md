# Guide Anti-Détection Cursor & Création de Compte

## 🎯 Objectif
Ce guide explique comment contourner la détection d'appareil de Cursor pour créer de nouveaux comptes. Cursor utilise plusieurs méthodes pour identifier votre machine :
- Adresse MAC
- Fichiers cache et cookies
- Identifiants système stockés
- Empreinte digitale du navigateur

## 🛡️ Méthode de Contournement

### 1. Préparation
- Téléchargez le script `reset_cursor.sh`
- Fermez Arc et Cursor complètement
- Exécutez dans le Terminal :
  
bash
chmod +x reset_cursor.sh
sudo ./reset_cursor.sh


### 2. Création Email Temporaire
- Utilisez [YOPmail](https://yopmail.com)
- Générez une adresse aléatoire
- **Pro-tip** : Notez l'adresse pour vérifier la confirmation

### 3. Configuration Navigateur
Pour maximiser l'anonymat :
- Utilisez Arc en mode privé
- Activez un VPN fiable
- Changez la résolution de votre écran (Préférences Système > Affichage)
- **Important** : Ne vous connectez pas à d'autres services Google/GitHub

### 4. Création Compte Cursor
1. Allez sur [Cursor.com](https://cursor.com)
2. Inscrivez-vous avec :
   - Email YOPmail généré
   - Nouveau nom d'utilisateur unique
   - Mot de passe fort
3. Validez via YOPmail

### 5. Installation Cursor
- Téléchargez la dernière version
- **Important** : Attendez 2-3 minutes après le script
- Installez et connectez-vous

## 🔍 Comment ça marche

### Identification Machine
Cursor utilise plusieurs méthodes pour identifier votre PC :
1. **Hardware ID** : 
   - Combinaison unique de composants
   - Stocké dans les fichiers système
   - Effacé par notre script

2. **Empreinte Réseau** :
   - Adresse MAC
   - Identifiants WiFi
   - Changés automatiquement


## 🎯 Meilleures Pratiques

### Pour chaque nouvelle création :
1. Exécutez le script
2. Nouvelle adresse YOPmail

### À éviter absolument :
- Réutiliser d'anciennes adresses
- Garder le navigateur ouvert

## 📝 Notes Techniques

Le script modifie :
- Identifiants matériels
- Empreinte réseau
- Traces système
- Cache navigateur
