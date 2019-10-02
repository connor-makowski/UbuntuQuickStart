#!/bin/bash
echo "Running Git Credential Setup."
echo "Make sure you did not run this command as as super user (su, sudo)"
echo ""
echo "Did you run this command as any super user? (y/n)"
read superuser

if [ "$superuser" == "n" ];
then
  echo "Continuing with Git Setup"
else
  echo "Ending Setup. Run command as a normal user."
  exit 1
fi

echo "Are you using multiple git accounts? (y/n)"
read multigit

if [ "$multigit" == "n" ];
then
  echo "What is your email for git?"
  read email1
  echo "Please retype your email for git."
  read email2
  echo "Please type your name for git."
  read name

  if [ $email1 == $email2 ];
  then
    echo "Emails Match. Generating a git ID"
  else
    echo "Emails Do not Match, Try the 'GitCredentials' script again."
    exit 1
  fi

  ssh-keygen -f ~/.ssh/id_rsa -t rsa -b 4096 -C $email1
  git config --global user.email $email1
  git config --global user.name $name
  ./ShellScripts/Git/AutoGit.sh
  echo "Git credential generated."
  echo "Git Global user.name and user.email set"
  echo "To use your git credentials, you need to copy your public key"
  echo "over to github in your personal section under the ssh tab."
  echo "This key is currently copied to your clipboard"
  echo "This key can also be found in ~/.ssh"
  echo ""
  echo "To clone a repo:"
  echo "git clone git@github.com:org-name/repo-name.git"
fi

if [ "$multigit" == "y" ];
then
  echo "What is your personal email for git?"
  read pemail1
  echo "Please retype your personal email for git."
  read pemail2

  echo "What is your work email for git?"
  read wemail1
  echo "Please retype your work email for git."
  read wemail2

  echo "Please type your name for git."
  read name

  if [ $pemail1 == $pemail2 ] && [ $wemail1 == $wemail2 ];
  then
    echo "Emails Match. Generating git IDs"
  else
    echo "Emails Do not Match, Try the 'GitCredentials' script again."
    exit 1
  fi

  echo "Generating Personal Key"
  ssh-keygen -f ~/.ssh/id_rsa_personal -t rsa -b 4096 -C $pemail1
  echo "Generating Work Key"
  ssh-keygen -f ~/.ssh/id_rsa_work -t rsa -b 4096 -C $wemail1
  ./ShellScripts/Git/MultiGit.sh
  git config --global user.email $pemail1
  git config --global user.name $name

  echo "Git credentials generated."
  echo "Git Global user.name and user.email set to your personal information"
  echo "To use your git credentials, you need to copy your public keys"
  echo "over to github in your personal section under the ssh tab."
  echo "These keys can be found in ~/.ssh"
  echo ""
  echo "To clone a repo with your personal key:"
  echo "git clone git@personal.github.com:org-name/repo-name.git"
  echo "git clone git@github.com:org-name/repo-name.git"
  echo ""
  echo "To clone a repo with your work key:"
  echo "git clone git@work.github.com:org-name/repo-name.git"
fi

exit 1
