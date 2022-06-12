#!/bin/ash

if [[ ! -f /home/rbw/.config/rbw/config.json ]]; then
  read -r -p 'Enter your Bitwarden login: ' email
  echo "email $email"
  rbw config set email "$email"

  read -r -p 'Enter self-hosted installation URL, if applicable: ' self_url
  if [[ ! -z "$self_url" ]]; then
    rbw config set base_url "$self_url"
  fi

  read -r -p 'Enter self-hosted installation identity url, if applicable: ' self_ident_url
  if [[ ! -z "$self_ident_url" ]]; then
    rbw config set identity_url "$self_ident_url"
  fi

  rbw register
  echo "Set up complete. Start the agent"
else
  echo "Set up already done. Start the agent"
fi
