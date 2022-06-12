#!/bin/zsh

set -eufo pipefail

# Install mac os configuration
echo '🍺  Installing Homebrew apps'

# Close any open System Preferences panes, to prevent them from overriding the settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# ~/.macos — https://mths.be/macos

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Enable auto appearence mode
defaults write -g AppleInterfaceStyleSwitchesAutomatically -bool true

# Disable last login prompt
touch ~/.hushlogin

###############################################################################
# Dock                                                                        #
###############################################################################

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Speed up animation when auto-hiding the dock
defaults write com.apple.dock autohide-time-modifier -float 0.5
defaults write com.apple.dock autohide-delay -float 0

###############################################################################
# Keyboard                                                                    #
###############################################################################

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2

# Configure key bindings so that home/end keys work
mkdir -p ~/Library/KeyBindings
echo '{
/* Remap Home / End keys */
/* Home Button*/
"\UF729" = "moveToBeginningOfLine:";
/* End Button */
"\UF72B" = "moveToEndOfLine:";
/* Shift + Home Button */
"$\UF729" = "moveToBeginningOfLineAndModifySelection:";
/* Shift + End Button */
"$\UF72B" = "moveToEndOfLineAndModifySelection:";
/* Ctrl + Home Button */
"^\UF729" = "moveToBeginningOfDocument:";
/* Ctrl + End Button */
"^\UF72B" = "moveToEndOfDocument:";
 /* Shift + Ctrl + Home Button */
"$^\UF729" = "moveToBeginningOfDocumentAndModifySelection:";
/* Shift + Ctrl + End Button*/
"$^\UF72B" = "moveToEndOfDocumentAndModifySelection:";
}' > ~/Library/KeyBindings/DefaultKeyBinding.dict

###############################################################################
# Trackpad                                                                    #
###############################################################################

# Use all F1, F2, etc. keys as standard function keys (requires restart)
defaults write -g com.apple.keyboard.fnState -bool true

# Enable tap to click for this user and for the login screen
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Enable three finger drag
#defaults write com.apple.AppleMultitouchTrackpad Dragging -int 1
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Dragging -int 1

###############################################################################
# Finder                                                                      #
###############################################################################

# Link iCloud to home directory
ln -sf $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/ $HOME/iCloud

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

###############################################################################
# iTerm2                                                                      #
###############################################################################

# Disable warning when doing multi-line paste
defaults write com.googlecode.iterm2 NoSyncDoNotWarnBeforeMultilinePaste -bool true
defaults write com.googlecode.iterm2 NoSyncDoNotWarnBeforeMultilinePaste_selection -bool false

# Disable warning when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Dock" "Finder" "iTerm2"; do killall "${app}" 2>/dev/null; done