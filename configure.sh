#!/usr/bin/bash

email="${1}"
if [[ -z "${email}" ]]; then
    email='qdlacz@gmail.com'
    echo "No email given, defaulting to ${email}"
fi

git config --global core.editor emacs-nox
git config --global credential.helper libsecret
git config --global --add credential.helper gnome-keyring
git config --global push.default simple
git config --global rebase.autosquash true
git config --global sendemail.from "Krzesimir Nowak <${email}>"
git config --global sendemail.smtpserver smtp.gmail.com
git config --global sendemail.smtpuser "${email}"
git config --global sendemail.smtpencryption tls
git config --global sendemail.smtpserverport 587
git config --global user.name "Krzesimir Nowak"
git config --global user.email "${email}"
