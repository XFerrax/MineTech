#!/usr/bin/env sh
# Forge requires a configured set of both JVM and program arguments.
# Add custom JVM arguments to the user_jvm_args.txt
# Add custom program arguments {such as nogui} to this file in the next line before the "$@" or
#  pass them to this script directly
java @user_jvm_args.txt @libraries/net/minecraftforge/forge/1.19.2-43.2.3/unix_args.txt "$@" nogui;
cd FerraxWorld;
name=$(date +"%Y%m%d_%H%M%S");
git add -A
git commit -a -m "offline-${name}";
git push;
shutdown now;
