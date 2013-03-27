unbörk
======

Unmangles your UTF-8 encoded strings stored in MySQL's default Latin-1 Swedish encoding.

This is just a small wrapper around the concepts in [Rowan Thorpe's](http://rowanthorpe.wordpress.com/2012/10/15/unmangle-utf-8-from-double-encoded-utf-8-my-shell-script-and-batch-script-tweaks/) blog post, and includes a verbatim copy of his sed rules file.

Use it when working with legacy databases created with the wrong internal encodings. Fixing the database itself is always the best option, but it might be infeasible due to many reasons: downtime, legacy applications, lack of administrative access.

Includes most Latin scripts, Greek and some miscellaneous characters. Adding Cyryllic and other scripts should be fairly trivial.


Usage
-----

    irb> t = User.find(...).full_name
    "Bartek UrbaÅ„ski"
    irb> require 'unbork'
    irb> unbork t
    "Bartek Urbański"
