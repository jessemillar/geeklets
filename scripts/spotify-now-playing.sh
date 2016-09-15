#!/usr/bin/env bash

osascript <<EOD
  tell application "System Events"
  	set appList to name of every process
  	if appList does not contain "Spotify" then
  		return ""
  	else
  		tell application "Spotify"
  			if player state is not stopped then
  				set currentTrack to current track
  				tell currentTrack
  					set trackName to name
  					set trackArtist to artist
  				end tell
  				if player state is playing then
  					return trackName & return & trackArtist
  				else
  					return trackName & " (paused)" & return & trackArtist
  				end if
  			else
  				return ""
  			end if
  		end tell
  	end if
  end tell
EOD
