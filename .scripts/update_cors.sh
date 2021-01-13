#!/bin/sh
 
# Sets cors access-control-allow-origin settings on default Firestore Storage bucket
# To check the current settings run $gsutil cors get gs://secret-seal-sauce.appspot.com

gsutil cors set firebase_storage_cors_settings.json gs://secret-seal-sauce.appspot.com