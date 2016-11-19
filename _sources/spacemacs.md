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
