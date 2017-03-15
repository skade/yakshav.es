# spacemacs

I'm currently trying out [spacemacs](http://spacemacs.org).

Here are a some short notes for setting in up on OS X and ironing out some problems.

## Fonts busted

If you have something like this in Emacs.app:

![Broken fonts in Emacs](https://pbs.twimg.com/media/CxUCOUYWgAA9PB3.jpg:large)

First of all, make sure you have [powerline fonts](https://github.com/powerline/fonts) installed.

Navigate to the font configuration in your .spacemacs file and change it to something like this:

```lisp
dotspacemacs-default-font '("Fira Mono for Powerline"
                            :size 14
                            :weight normal
                            :width normal
                            :powerline-scale 1.1)
```

(or choose any of the fonts you like).

Also, navigate to `dotspacemacs/user-config` and add:

```lisp
(setq powerline-default-separator 'arrow)
(setq ns-use-srgb-colorspace nil)
```

## TLS not working

When using restclient.el, I ran into TLS issues due to missing CA certificaties.

This can be fixed by downloading `cacert.pem` from [curl](https://curl.haxx.se/docs/caextract.html) and putting it somewhere. Then put the following in `dotspacemacs/user-config`:

```lisp
(require 'tls)
(require 'gnutls)
(add-to-list 'gnutls-trustfiles (expand-file-name "~/.emacs.d/etc/cacert.pem"))
```

Regularly update the cert file.

## Use the emacs server

Emacs can start a small server, making it possible to send it commands from the command line. Mostly, I use that to open files from the command line.

Start the server by putting this in your `dotspacemacs/user-config`:

```lisp
  (server-start)
```

Then use `emacsclient` from the command line:

```sh
/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c -n $argv;
```

Obviously: create an alias for that.

`-c` tells emacs to create a new frame for the file, `-n` the client not to wait until the frame closes.

## Don't close Emacs.app on last window close

I prefer the standard OS X behaviour of not closing the app when the last document closes. This also means that you don't have to pay the hefty startup fine that spacemacs has every time. Luckily, Emacs behaviours are mostly written in elips, so you can just monkey-patch that behaviour.

Just put this in your `dotspacemacs/user-config`:

```lisp
  (defun handle-delete-frame-without-kill-emacs (event)
    "Handle delete-frame events from the X server."
    (interactive "e")
    (let ((frame (posn-window (event-start event)))
          (i 0)
          (tail (frame-list)))
      (while tail
        (and (frame-visible-p (car tail))
             (not (eq (car tail) frame))
             (setq i (1+ i)))
        (setq tail (cdr tail)))
      (if (> i 0)
          (delete-frame frame t)
        ;; Not (save-buffers-kill-emacs) but instead:
        (ns-do-hide-emacs))))

  (when (eq system-type 'darwin)
    (advice-add 'handle-delete-frame :override
                #'handle-delete-frame-without-kill-emacs))
```

This probably better belongs into a layer.

Found [here](https://lists.gnu.org/archive/html/help-gnu-emacs/2016-01/msg00236.html).