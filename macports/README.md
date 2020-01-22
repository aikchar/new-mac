Edit _ports.txt_ to list all ports you want to install in the order they should
be installed. The order is important so that MacPorts can keep track of which
ports were _requested_ to later use in ``port list requested``. Sometimes a
requested port is a dependency of another port. In such cases, if the port is
listed _after_ another port that uses the former as its dependency, MacPorts
_does not_ treat the former as _requested_.

Run the following command to install ports listed in _ports.txt_,

        $ make install-ports

Generate a list of requested ports,

        $ port list requested 2>/dev/null > requested

You should generate this list periodically.

- https://trac.macports.org/ticket/48971
- https://pandoc.org/MANUAL.html#creating-a-pdf
