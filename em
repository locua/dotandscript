#!/bin/bash
# If emacs is running already run emacsclient
if pgrep emacs; then emacsclient -a "" $@ -c &  else emacs ; fi
