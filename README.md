==About==
This enables a machine to stream the audio-in via icecast and darkice on first streaming-request to the icecast mount point. Only the icecast server is running and darkice starts on demand.

I have this setup running to stream via a bluetooth dongle to a Logitech Media Server (LMS).

==Setup==
- darkice
- icecast2
- Audio source on audio in

==Config==
Adapt the darkice-stop.sh to your icecast-darkice stream name, given in darkice.cfg
