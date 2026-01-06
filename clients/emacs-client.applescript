-- Emacs Client AppleScript Application
-- Handles opening files from Finder, drag-and-drop, and launching from Spotlight/Dock

on open theDropped
  repeat with oneDrop in theDropped
    set dropPath to quoted form of POSIX path of oneDrop
    try
      do shell script "/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c -a '' -n " & dropPath
    end try
  end repeat
  try
    do shell script "open -a Emacs"
  end try
end open

-- Handle launch without files (from Spotlight, Dock, or Finder)
on run
  try
    do shell script "/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c -a '' -n"
  end try
  try
    do shell script "open -a Emacs"
  end try
end run

-- Handle org-protocol:// URLs (for org-capture, org-roam, etc.)
on open location this_URL
  try
    do shell script "/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n " & quoted form of this_URL
  end try
  try
    do shell script "open -a Emacs"
  end try
end open location
