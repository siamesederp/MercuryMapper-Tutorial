-> [![MercuryMapper Tutorial](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/titleblock.png){675hw:150hw}](https://github.com/Yasu3D/MercuryMapper) <-
[TOC]
***
#How to use the Editor
***
## Creating your first chart
### Installing the editor
!!!info This guide is for Windows, but the core concepts can be transferred to other operating systems.
1. Go to the [MercuryMapper GitHub repository](https://github.com/Yasu3D/MercuryMapper).
2. In the **Releases** section, find the latest release (it’s usually at the top of the list).
3. Under the latest release, find the assets section and download `MercuryMapper-Win-Portable.zip`
4. Once the download is complete, navigate to your download location.
5. Right-click the `MercuryMapper-Win-Portable.zip` file and select **Extract All** or use a tool like [7zip](https://7-zip.org/) to extract it.
6. Navigate to the extracted folder.
7. Locate and run `MercuryMapper.exe`

### Setting up audio
#### Audacity
!!!info This guide will use audacity, but the core concepts can be transferred to other audio editors.
1. Open [Audacity](https://www.audacityteam.org/download/) and import your song.
2. Insert one or two measures of silence at the start of the audio, use one if you want the song to start immediately after the metronome.
3. Ensure the song is synced so that the first beat lands at the start of a measure, you can use the `Generate -> BPM Labels` to check this.
Example image, where the audio starts on measure 2 and the first played beat is on measure 4:
![BPM_Label_Image](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/BPM_Label.png)
4. Export the edited audio using `File -> Export Audio`, It's recommend to export as OGG Vorbis as it tends to work the best.
### Initial Chart Setup
1. In the editor, select `File -> New` to create a new chart.
2. Set the BPM and Time Signature here, if you don't have them you can usually find them pretty easily or calculate them yourself.
3. In the right of the editor, open `Chart Info` and fill out all the information. 
	3.1. See the [User Interface Section](https://rentry.org/MercuryMapper/#right) if any fields are confusing 
 
## Basics
***
###Hitsounds
Download the zip that contains the hitsounds, check the pins of `#editor-updates` in the discord.
Right-click the `MER_HITSOUNDS.zip` file and select **Extract All** or use a tool like [7zip](https://7-zip.org/) to extract it.
Open the settings, then select Audio, from here you can change hitsound volume and assign the audio files to each hitsound type.

###Keybinds
####File
`Ctrl + N`  - Creates a new chart
`Ctrl + O` - Opens an existing chart
`Ctrl + S` - Saves the current chart
`Ctrl + Shift + S` - Saves the current chart with a new file name or location
`Ctrl + Alt + S` - Opens the settings menu
####Edit
`Ctrl + Z` - Undoes the previous action
`Ctrl + Y` - Redoes the previous action
`Ctrl + X` - Cuts the selected note(s)
`Ctrl + C` - Copies the selected note(s)
`Ctrl + V` - Pastes the selected note(s)
####Playback
`Space` - Begin playback
`Ctrl + L` - Toggle Loop
`Ctrl + ,` - Set Loop Start
`Ctrl + .` - Set Loop End
`Add` - Increase playback speed
`Subtract` - Decrease playback speed
`Shift + Add` - Increase note speed
`Shift + Subtract` - Decrease note speed
`Ctrl + K` - Add Comment
####Selection
`Shift + W` - Highlight next note
`Shift + S` -  Highlight previous note
`Shift + Q` - Highlight nearest note
`A` - Select every note
`Alt + A` - Deselect every note
`Shift + Alt + A` - Checker Deselect
`Ctrl + B` - Box Select
`Shift + Space` - Select highlighted note
`Shift + R` - Select hold note references
####Edit Holds
`Return` - End current hold
`Shift + Return` - Edit selected hold
`Shift + B` - Bake selected hold segments
`Ctrl + Shift + B` - Bake selected hold segments \[No Render]
`Ctrl + H` - Stitch selected hold segments
`Alt + H` - Split Hold
`Shift + H` - Insert hold segment
####Edit Notes
`I` - Insert a note at current size and position
`Shift + E` - Edit selected notes' shape
`Ctrl + E` - Edit selected notes' type
`Ctrl + Shift + E` - Edit selected notes' shape and type
`Shift + M` - Mirror current selection
`Delete` - Deletes current selection
`Shift + Up` - Increase selected notes' size 
`Shift + Down` - Decrease selected notes' size
`Shift + Right` - Shift selected notes right
`Shift + Left` - Shift selected notes left
`Ctrl + Up` - Shift selected notes forward in time
`Ctrl + Down` - Shift selected notes backward in time
`V` - Set hold segment render flag to true
`Alt + V` - Set hold segment render flag to false
`Ctrl + N` - Convert to instant mask
####Note Types
`1` - Set note type: Touch
`2` - Set note type: Slide (Clockwise)
`3` - Set note type: Slide (Counterclockwise)
`4` - Set note type: Snap (Forward)
`5` - Set note type: Snap (Backward)
`6` - Set note type: Chain
`7` - Set note type: Hold
`8` - Set note type: Add Mask
`9` - Set note type: Remove Mask
`0` - Set note type: End of chart
`Shift + 1` - Select note modifier: None (If using masks, set mask style to clockwise)
`Shift + 2` - Select note modifier: Bonus (If using masks, set mask style to counterclockwise)
`Shift + 3` - Select note modifier: R-Note (If using masks, set mask style to center)
###Other Settings
####Editor
`Quantize on Pause` - Whenever you pause, snaps to the nearest beat based on your beat division.
`Highlight Placed Note` - Automatically highlight a note when you place it.
###User Interface
####Top
- File
	- New
		- Create a new chart
	- Open
		- Open an existing chart
	- Save 
		- Save the current chart
	- Save As
		- Save the current chart with a new name or location
	- Export
		- Export for Mercury
			- Exports in a format compatible with WACCA
		- Export for Saturn/Create Saturn Folder
			- Export for Saturn, a WACCA simulator (Not currently released)
	- Online
		- Create Session
			- Creates an online session that other people can join.
		- Join Session
			- Join someone elses' online session
		- Disconnect
			- Disconnect from the current session
	- Settings
		- Open the settings menu
	- Exit
		- Exit the editor (closes the program)
- Edit
	- Undo
	- Redo
	- Cut
	- Copy
	- Paste
- Select 
	- Select All
		- Selects all objects
	- Deselect All
		- Deselects all objects
	- Checker Deselect
		- Deselects every other selected object, starting with the first selected note
	- Select Similar
		- Selects similar notes to the one highlighted
		- Filter Selection
			- Restricts the selection to actively selected notes
		- Threshold
			- How many units of variance is tolerated (Ex: a size 10 note with a threshold of 2 will select size 8-12 notes but not size 13+/7- notes)
	- Select Hold Note References
		- Selects all segments in hold notes that currently have selected segments
	- Select Highlighted Note
		- Selects the highlighted (red) note
- Tools
	- Mirror Chart
		- Mirrors the chart on the current axis set in `Modify Notes - Mirror Axis`
	- Shift Chart
		- Shifts the chart by specified amount, useful for (re)syncing a chart to audio
	- Fix off-by-one Errors
		- Fixes notes that are slightly misalligned (ex: 1919/1920 instead of 0)
	- Generate Jagged Holds
		- Moves segments of the hold to give it a jagged shape, reconstruct holds can be used to increase segment density for denser spikes.
	- Reconstruct Holds
		- Applies to entire hold, even if only part is selected
		- Hold to Hold
			- Re-traces a hold note with a fixed interval between segments, useful for making extra segments to use with jagged holds
		- Hold to Chain
			- Same as Hold to Hold, but segments are converted to chains afterward, useful for creating slides with chains or overlaying chains on a hold
	- Proofread
		- Checks for problems with your chart, very sensitive so will point out legal patterns. It's recommended to check anywhere it warns to ensure the chart follows good practices.
####Left
![Bottom UI](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/UI_Left.png)
####Right
- Chart Info
	- Current Filename
	- Version
		- The version of the chart, not displayed in-game
	- Title
		- The title of the song
	- Ruby
		- The title with the kana reading of the kanji, used for sorting/bingo. 
	- Artist
		- The author of the song
	- Chart Author
		- The author of the chart, probably you
	- Difficulty
		- The difficulty level of the chart, includes a 5th option of `WORLD'S END` in reference to Chunithm that is used for experimental/joke charts.
	- Level
		- The decimal difficulty value
			- The game starts '+' values at .7, so a 13.6 is a 13 while a 13.7 is a 13+
			- The game doesn't support 14+, so difficulties of 14.7-14.9 should be avoided
	- Clear Threshold
		- Determines how much score is needed to clear. It's recommended to use `0.5` for Normal, `0.6` for Hard, and `0.83` for Expert/Inferno.
	- BPM Text
		- The BPM should be displayed in game.
	- Preview
		- Preview start/length fields are the time in seconds for where the preview starts/how long it lasts respectively
		- The preview time is used for what is heard during song select and song preview
		- The preview button will play the section that would be previewed and then stop
	- BGM
		- Offsets the audio relative to the chart, it's recommended to synchronize the audio itself (see: [Setting Up Audio](https://rentry.org/MercuryMapper/#setting-up-audio))
		- Displays the currently loaded BGMs' filename below the selection button
	- BGA
		- The `Background Animation` (aka Movie/Video), does not display in-editor
	- Jacket
		- The jacket is the image for the song (aka album art, cover, etc)
		- Has current jacket filename displayed over the jacket selection button
		- Current jacket is shown below the button
- Selection Info
	- Shows how many notes are selected (this info also appears in blue text next to the gimmick selector)
	- Main use is to change the highlighted note/view info about the highlighted note
- Quick Settings
	- Note Speed
		- How fast the notes scroll during playback, values are the same as scroll speed in WACCA
	- Beat Division
		- The amount of grey beat lines per measure
	- Show Speed Changes
		- Toggles if speed changes are shown both while editing and during playback, includes stops, useful for doing complex HiSpeed sections
	- Draw No-Render Holds
		- No-Render hold segments are used exclusively for judgement, and as the name implies, are not rendered
	- Show Timing Windows
		- Shows the timing windows of each note
		- It's recommended to enable `Cut Early on Holds` and `Cut Overlapping` with all windows enabled to ensure all patterns are possible/fair to hit, see [Game Mechanics](https://rentry.org/MercuryMapper/#note-judgement) for more info
	- Music Volume
	- Hitsound Volume
- Modify Notes
	- Edit \[Shape]
		- Changes the selected note(s) size and position to be that of the cursor.
	- Edit \[Type]
		- Changes the selected note(s) type to be that of the cursor.
	- Edit \[Both]
		- Changes both the shape and type of the selected note(s) to be that of the cursor
	- Delete Selection
		- Deletes all currently selected objects
	- Mirror Axis
		- Change the axis on which mirror operations are performed (visualized by a white line on hover)
		- Pressing the mirror button will apply a mirror to all currently selected notes
	- Hold Ease
		- Bake hold will fill the area between a selected segment of a hold and the next segment of a hold with more segments to achieve a smoother result
		- The easing type to the left of the bake button determines where the inserted segments are placed
		- Examples of non-linear curves can be seen [at this website](https://easings.net/)
	- Stitch Hold
		- If a hold end and a hold start are selected, they will fuse into a singular hold.
	- Insert Segment
		- Inserts a hold segment at the current time with the same size/position as the cursor in a hold if one of its' segments are highlighted.
	- Split Hold
		- Splits a hold in two at the highlighted segment
	- Delete Segments
		- Deletes all selected No-Render segments
	- Set Render Type
		- No-Render hold segments are used exclusively for judgement, and as the name implies, are not rendered
	- Convert to Instant Mask
		- Subdivides the currently selected mask to smaller pieces to cause the mask to instantly add/remove the section.
- Modify Gimmicks
 	- Either edit or delete the currently highlighted gimmick
- Loop Options
	- Place either a loop start or loop end at the current measure, visualized on the playback slider as a green and red line respectively

####Bottom
![Bottom UI](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/UI_Bottom.png)

###Note Placement
- You can adjust note size and position by clicking and dragging in the viewport or with the sliders found in Current Note Settings on the left.
- Place notes by pressing `I` or by clicking the button under those sliders.
- Select note type with the colored buttons in the top left or by pressing number keys.
- Place Bonus/R Notes by using the buttons under the note type panel to change bonus type.
####Holds
- Once you place a hold note, you can only place hold segments until you finish the hold note.
- To finish a hold note place the last segment and then click the `End Hold` button next to the insert button.
####Selecting, Editing, Deleting
- To select a specific note, `Ctrl + Left Click` or scroll to it and click `Nearest` in the `Selection Info` tab. If there are multiple notes at once, you can click `< Previous` or `Next >` to cycle though them.
- Highlighting and Selecting are two different things
	- Highlighting (Red) is used to select certain notes (useful when overlaps are present) and to view information in the `Selection Info` tab
	- Selecting (Blue) doesn't show info in the `Selection Info` tab and can select multiple notes at once.
- To delete a note, either undo with `Ctrl + Z` or select a note and press `Delete`/click `Delete Selection` in the `Modify Notes` tab.
- To edit the type/size, you can use the [Edit Note](https://rentry.org/MercuryMapper/#edit-notes) binds or use the `Edit [Shape]` and `Edit [Type]` buttons to change the selected note into the shape/type of the currently selected shape/type.
- MercuryMapper converts copied sections to text in modern versions, so you can paste between windows or even paste into discord to share a pattern.
###Gimmicks
####Hi-Speed
- Can be used to slow down or speed up the scroll speed
- If a hold that moves/changes size is in the view port during a really slow hispeed (under 0.01), the game will crash.
####Stop
- If a hold that moves/changes size is in the view port during a stop, the game will crash.
####Reverse
- Creates a section where notes scroll backward before playing back normally
- Basically only used when referencing another game that does it

***
# Charting Best Practices 
***
## Chart Preparation
Plus charts must follow a specific set of guidelines:
- 1:45 - 3:00 in length
- Can be reasonably argued that it would belong in an official rhythm game
	- Ported songs from other games automatically get a pass
- 2 empty measures at the beginning of song before the first meaningful beat (eg. start of the chart)
	- this depends on the song (i.e. if the silence is baked into the song already), but at least 1 measure
	- If this is not done, your chart will start too abruptly, and possibly overlap with the metronome
- End of Chart note is placed at least 1 measure full after the last meaningful input
***
## Note Placement
!!! note Minimum note size for use should be 10.  However, use at least 12 when possible. 
- BIGGER IS BETTER, especially on lower difficulties.
	- Really big notes (>25) can lead to visual clutter, calibrate usage scaling into higher difficulties
- Smaller notes can be used, but they need to be intentional (repeated pattern, thematic charting, slow sections of song)
- Consider using 14 for CW / CCW swipes to ensure the player can trigger enough sensors
- The wider the movement you want, the bigger the note should be.
	- Direct the player by using the appropriate note sizing.

!!! note No need to chart every note in a song, especially compared to most traditional Rhythm Games.

- Wacca is very arm intensive, so remember to put breaks.  Keep in mind that after a break, you should probably resume charting from the bottom third (so 4-8 on the clock basically) as a person will naturally reset their arms down.

- Keep in mind lines of symmetry (there are 60 of them), especially to help keep a chart feeling fresh. However it’s generally better to just use the bottom third of the circle for the most part as reading patterns from the top is generally less common unless the chart flows up there.

- Player momentum and inertia is important to keep in mind while charting. Transitions that jump from patterns that “lock” the player into position into movements that require the player to move quickly around the ring may be uncomfortable. Higher rating charts can get away with faster transitions as players are expected to be able to react to these patterns.
one 
!!! danger Avoid opposing direction swipes and snaps within a 16th measure. Allow for at least an 8th measure between each input. One or two may be ok but left unchecked can become aggravating to play. Consider using chains in place of the proceeding swipes/snaps. This rule can be more lenient or strict as it is BPM dependent.
***
## Top Half vs Bottom Half
!!! info numbers referenced here correlate to positions on a clock

The majority of the game is played in the lower half of the ring (4 - 8). Semi-frequent use of 2 - 3 and 9 - 10 positions are common in Experts, less common in Hard / Normal. Hold spins around the entire circle are the exception

!!! warning Top section (10 - 2) note placements should be considered with care. 
	Certain patterns are awkward or  difficult to execute when placed on the top side (eg. up/down snap bombs, trills). Down snaps are also quite tricky to hit on the top section. Dense patterns in the top section are also much harder to read.
***
## Hand Parity and Pattern Placement
- Shadow your charts by playing the chart in the editor to check that your hands end up where you expect the player to be playing.
- Test your chart with consideration that a player may hit notes using hands opposite of how you intend it to be played.
- Most patterns are meant to be hit by alternating hands, only occasionally you will see a pattern where one hand is hitting more than one note in a row.
!!! warning Cheese is part of the game
	Either chart around it or embrace it. 
	Ensure that all patterns can be resolved, or force the player to not be able to cheese patterns.
!!! danger  Avoid starting dense / difficult patterns with no warning 
	(eg. trills on the side of the ring, top side notes with only bottom half patterns preceding).
	Guide the player into patterns by priming them beforehand.
***
## Game Mechanics
### Note Types
Note Type|When to use|Comments
:---:|-----|-----
![Touch note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_touch.png)|• Complex tap patterns easier to read than complex swipe/snap patterns due to simple input ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Chording can be used to place emphasis on a specific note instead of using a Snap/Slide|• General use for most sounds. Aside from certain gimmick charts, is the most common note type ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Due to simpler input, is generally used more in complex patterns
![Snap outward note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_snap_out.png)|• Can be used to end a touch pattern or end of a hold note ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Due to more complex input, generally not used in super dense patterns ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Can be used to place emphasis on a specific sound or on a kick|• Asymmetric timing window
![Snap inward note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_snap_in.png)|• Can be used to end a touch pattern or end of a hold note ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Due to more complex input, generally not used in super dense patterns ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Can be used to place emphasis on a specific sound or on a kick|• Generally considered to be the harder note type to input ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Asymmetric timing window
![Slide left note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_slide_left.png)|• Can be used to end a touch pattern or end of a hold note ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Due to more complex input, generally not used in super dense patterns ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Can be used to place emphasis on a specific sound or on a kick|• Asymmetric timing window
![Slide right note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_slide_right.png)|• Can be used to end a touch pattern or end of a hold note ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Due to more complex input, generally not used in super dense patterns ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Can be used to place emphasis on a specific sound or on a kick|• Asymmetric timing window
![Hold note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_hold.png)|• Generally used to indicate an extended sound, but can also be mixed with other note types for more technical sections regardless of what the music is (this is typically done in EXP or INF only) ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Can be used to help break up a syncopated section|• Compared to other games, has a somewhat generous release window (250ms)
![Chain note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_chain.png)|• Can be used for dense sections i.e. 16th notes at 300 bpm|• While having a guaranteed window if inputted, due to the slightly smaller overall input window (see Note Judgment below), this can be harder to hit if replacing Touch notes for the same pattern
![R note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_r.png)|• Can be used to place greater emphasis on a specific sound ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Amount of usage can be preference, but consider comments to the right|• Available for all above note types ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Plays a louder hit sound than other notes ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Worth 2x the score of a regular note ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• The more R notes in a chart the lower the value of the non-R notes
![bonus note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_bonus.png)|• Can be used to place emphasis on a specific sound ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Due to the Touch note Bonus sound being distinctly different (less percussion) from a normal Touch note, can be used to represent a variance in sound in a given song ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Can be used more liberally without affecting scoring|• Available only for Touch and Slide (Left or Right) note types ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Plays a different hitsound compared to regular notes ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• Bonus Touch note hitsound plays a more distinctly different hitsound in game compared to Bonus slide notes ![](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/newline.png){500hw:1hw}• No effect on scoring, grants more life for the clear bar instead

### Note Judgement
WACCA’s timing system functions in a similar way to Chunithm; if two or more notes are within close proximity to each other, their judgment windows get cut off.

This means that notes in a high enough density will not have any windows other than marvelous, and can be freely hit by sliding on the touch panels, without the risk of losing accuracy.

You can enable an overlay in `Settings -> Rendering` to show these judgement windows in order to check if the windows are cut off.

It's important to note that if timing windows get cut off from overlaps in a pattern like a trill, the game will only register Marvelous or Miss judgements, which can kill FCs and be very annoying to play.  Use the overlap overlay to ensure that your patterns do not overlap unless you intend for it to be slid.

Correct|Incorrect
:---:|:---:
![A stream with timing windows that will not get cut off](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/overlap_good.png){250hw:250hw}|![A stream with timing windows that get cut off](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/overlap_bad.png){250hw:250hw}

#### Avenue-ing
Due to the way the game cuts off hitboxes, a hold end will cut off the early window of any notes on said hold end. Charts like Avenue (hence the name) use this trick to have notes on top of holds without risk of having it be triggered early. It's recommended to do this unless you specifically want to keep the early window as a challenge.

Note Type|Good Timing Window in frames (Early/Late)|Great Timing Window in frames (Early/Late)|Marvelous Timing Window in frames (Early/Late)
:----:|:----:|:----:|:----:
Touch|6/6|5/5|3/3
Snap (Red)|10/-|8/10|5/7
Snap (Blue)|-/10|10/8|7/5
Slide (Orange)| 10/-|8/10|5/7
Slide (Green)| 10/-|8/10|5/7
Hold|6/6|5/5|3/3
Hold End|if released for >250ms then re-held|-/-|7/7
Chain|-/-|-/-|4/4

***
## Patterns

### Terminology
Term|Description|Example
:----:|:----:|:----:
Trill / Drill|Long 16th note run that follows a continuous path|![Odin Exp 13, measure 38](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/drill.png)
Anchor|Patterns where one hand remains (is “anchored”) in place while the other hand executes patterns on the rest of the ring|![EPHMR Exp 13, measure 33](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/anchor.png)
Jumps|A pattern forcing quick jumps from one side of the ring to another.|![回レ！雪月花 / Maware! Setsugetsuka Inf 13+, measure 6](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/jumps.png)
One-handed chord (aka bracket or just chord)|Two notes meant to be hit with one hand|![Ready Go Exp 12, measure 14](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/1hc.png)
Two-handed chord (aka “Double”)|Two notes meant to be hit with both hands/one hand each.|![Dimension Hacker Inf 14, measure 17](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/2hc.png)
Cross hands / Cross over|Patterns which require the player to cross one arm over/under another arm|![Purple Skies Exp 12, measure 27](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/crossover.png)
Tap Slides a.k.a. Fake Slides|Consecutive tap notes that expect the player to slide the note rather than tap them. This can either be sliding/scrubbing in a static position or following the position of consecutive notes. This works due to how judgment windows for notes work (see: [Game Mechanics](https://rentry.org/mercurymapper#game-mechanics)). Compared to a similar slide using only chain notes, this pattern requires the player to be moving the entire way through the pattern to register each note.|![BPM=RT Exp 13+, measure 22](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/tapslide.png)![ソロモン・ナイト/ Solomon Night Exp 13](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/fakeslide.png)
Multi-swipe snap patterns|Swipe and snap patterns that appear on the same Beat|![インドア系ならトラックメイカー/Trackmaker Exp 12+, measure 59](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/trackmaker.png) ^(This specific swipe style is also referred to as Trackmaker)^![Gashatt Exp 12, measure 44](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/multi_swipe.png)

***
### Legal Patterns
Keep in mind that Wacca is not an individual finger game (patterns that use hand + thumb are ok)
- By raw sensor count, Wacca has 15 times the number of sensors as Chunithm, and 3.75 times if only considering CCW/CW directions
!!! warning Legal, but hard, patterns found in certain charts in the game (eg. Lethal Weapon, Poseidon, Cloud IX, MNK Inf) can be charted into a Wacca Plus chart, but strongly consider the playability and fun of the chart when charting. 
One-hand chords compared to Chunithm or other touch games can be hard to hit, so try using them sparingly. 
Touch note slides are generally bound to high difficulties (13+ or above)
In general, overlapping notes are not great from a readability perspective, however there are two exceptions:
- Overlapping hold notes and any notes on top of hold notes
- Chain notes
	- This is basically exclusive to 14s as a means of making swipe/snap patterns stricter (similar to chords but more lenient):
	![Ouvertüre Inf 14, Measure 103](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_strict_1.png){250hw:250hw} ![Super Emulator Exp 14, Measure 46](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_strict_2.png){250hw:250hw}
	- However, arguably not necessary depending on the pattern
	![Invisible Frenzy (Camellia's "593: Insanely Fluctuated" Remix) Exp 14, Measure 114](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_strict_3.png){250hw:250hw} ![EPHMR Inf 14, measure 92](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_strict_4.png){250hw:250hw} ![DUAL BREAKER XX Expert 13+, Measure 80](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_strict_5.png){250hw:250hw}

You can find all official charts at [mp.yello.ooo](https://mp.yello.ooo/) if you want to study them, it doesn't come with audio though.
***
### Input Guidance
- When placing swipes in the middle of holds, consider how the player’s hand should be moving and pattern to avoid causing early inputs
	- This includes using hold ends to prevent early input	
	- Can be done by adding hold start right after hold end or start multiple hold notes and and one hold note at each swipe/snap
- When using a swipe to transition to a new pattern, consider the likelihood of the player swiping into the notes on accident
- When ending a pattern with a swipe, try to keep at least a beat of distance between it and the start of the next pattern
	- This is a very malleable guideline as it is possible to swipe then have a touch note within an eighth note away, but the guideline above generally helps
- If a swipe or snap is on top of a hold end, consider making it larger than the hold end to allow the player to read it easier
	- For swipes (CCW or CW movement), when increasing size, it tends to help if the side where you want the player to swipe protrudes out
	![A hold leading into an orange silde](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_into_slide.png){250hw:250hw}
	- For snaps, just making them two units larger symmetrically will help them pop out more
	![A hold leading into a red snap](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_into_snap.png){250hw:250hw}
!!! danger Avoid chain note slides right before starting a touch note section.
	Incorrect|Correct
	:----:|:----:
	![Conflict Exp 13, measure 9: A chain slide leading into a tap](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_slide_bad.png)|![XODUS Exp 14, measure 9: Chains to the side of tap notes section](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_slide_good.png)


***
###Spins
The speed at which spins (i.e. amount of units moved per beat) is generally bpm-based, but at 200 BPM for example, a hold note or chain note spin that completes one rotation in one 4/4 time measure is generally a decent speed for an Expert
- for wider spins please make the notes bigger, however also keep in mind how cheesable it becomes (or play into it)
- some interesting notes about doing spins:
	- having a hold move at 5 units per 12th note will go around the circle one time exactly
	- a hold moving at 4 units per 16th note will go around the circle one time + 4 units
	- in general, having the number of units a spin or hold movement moves be a multiple of the size of the note can help with patterning, i.e. having a note size 15 move 5 or 3 units at a time

***
## Decoratives
### Masks
Use masks to direct the player on where the next patterns are going to be. Notes very rarely appear where there is no mask, so masks should be in place before a note reaches the playfield.

!!!info Size 1 CW/CCW or Size 2 Center masks will appear instantly. Use them if you want the mask to appear without rotating into position.

***
### Hi-Speed Changes
Avoid jump scare speed ups outside of Uppers (>=13) / Inferno charts. Consider the sight readability of charts when designing the gameplay around hi-speed changes.

Be mindful of how slow downs and speed ups are transitioned into. Accelerate and decelerate hi-speed as much as possible to give the player a chance to react.

!!! danger Stops” (Hi-speed < 0.01) are notorious for causing the game to act funny or even freeze the game. Be mindful of using them and test the chart extensively.

Other gimmicks like the built in reverse are complicated systems usually reserved for specific charts in the game (Like you are the miserable). They’re very finicky and can easily break a chart if not used correctly. The same goes for the built in Stop system, it is recommended to use Hi-speed values for this purpose instead.

***
### Chains on Hold Notes
If you have a moving Hold Note with Chains, keep their size equal or greater than the size of the Hold Note.

***
### Letters and Other Hold Art
Use examples found in official charts to ensure Hold art doesn’t cause dropped inputs. Some charts that have Hold art are: [The Light](https://youtu.be/rD7CjAep_7o?t=88) (12), [Brain Power](https://youtu.be/avM2UX0guSE?t=74) (13), [We are the Massive New Krew](https://youtu.be/_TF3QV-Amks?t=85) (13)

-> ![The Light Exp 12, measure 56: Hold art of the letters W, A and I](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_art_w_ai.png){250hw:250hw} ![Brain Power Exp 13, Measure 49: Hold art of the letters B and P](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_art_b_p.png){250hw:250hw} ![We Are The Massive New Krew Exp 13, measure 26: Hold art of the letter M, N and K](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_art_M_N_K.png){250hw:250hw} ![私はNo 1！Exp 12, measure 21: Hold art of an anchor](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_art_anchor.png){250hw:250hw} <-
***
## Normal Charting
Normal Characteristics: easy to read, easy to execute

Normal charts should be charted & expected to be played at default scroll speed (1.5). It is also recommended to test Normal charts with another handicap (eg. gloveless, one handed, playing with back of hand or fist) to simulate how a person new to Wacca would play.

!!! warning Minimize or zero usage of the top half.
	Lower level players have not yet developed the muscle memory of playing top side apart from spins. If you are moving around the circle, you can go through the top, but don’t stay there long and always lead into & out of it.
!!! warning Most beginner players also look directly at the judgement line. Not the center. 
	There's a good chance they literally won't see a note if it approaches from above.

Trend towards using larger note sizes (12-15).

Utilize holds for filler and the hold ends as a “note” to fill in blank space as they do have a hitsound to them.

Expect players to treat Chains as Taps (people skip the tutorial lol). Be aware that Chains have a smaller overall hit window (±12 frames) than Taps (±14 frames).

Up / down snaps are rare in Normal charts below 6. Avoid using them and stick to CW/CCW swipes.

Mask effects at this level should be very minimal as they can be very distracting for newer players

Refer to [this playlist](https://www.youtube.com/playlist?list=PLkt3uTWW5wfvvAn0Uwk7geTgpRr20k-zW) to get a good grasp on how Normal charts should flow.

***
## Hard Charting
Hard Characteristics: easy to read, trickier than normal to execute

Low tech, lack of trills (16th note patterns)

Several breaks between patterns

Long hold notes are good filler, but can get away with simple, big movements

Consider putting effort into making lowers as fun to play as experts. Good lowers on custom songs helps bring more people into the game.

If you want dense swipe (forward/backward) patterns - please reference DJ TURN 10

There’s kinda a split in Hard charts - the single digits are just mostly more advanced Normals.  But 9+ to 11+ can start to throw much more complex ideas in.  Especially 10+ - 11+. 

While base game Hards do not use high-speed changes at all, if you do decide to use them then the chart is a 10 at minimum, and be very cautious while in use. For instance, don’t expect the player to hit more than 1 note (or a chord) with a slowdown, and that note should be the only thing visible.

[playlist of base game hards](https://youtube.com/playlist?list=PLrLB1VP-BXs4ohrcRyCksn8hFyeUr77Gg)
***
## Expert Charting
Expert Characteristics: may require some studying, moderate difficulty to execute

Common tech that is seen in Experts:
- Triplets
- Trill runs
- One handed chords
- Cross handing
- Distinct hand patterns (eg. top hand holds, bottom hand executes taps)
- Scratching
- Tap slides
- Multi swipe / snap patterns (eg. Trackmaker)
- Multi hold patterns, requiring use of thumbs or individual fingers
- Full ring notes
(see [Terminology](https://rentry.org/mercurymapper#terminology) for definitions) 

Difficulty of Expert charts tend to correlate to the number of tech patterns used in a chart. Lower level Experts employ a few patterns to make them distinct. Upper level Experts will expect the player to utilize more tech skill sets.

A common theme in Experts are ones where one hand does a simple pattern and the other hand follows a more complex movement that requires more focus i.e. tracking notes that move in a wider range. 

***
## Inferno Charting
Inferno: hard to read, hard to execute
- Inferno is called inferno because it really works out your upper arms
- For some reason inferno charts occasionally use alternate song cuts
- Inferno charts have a LOT more gimmicks than experts (Both visual and patterning)
- Lower level Infernos can be a thing!  Usually if it’s a chart that is:
	- Being VERY gimmicky (but not challenging) [ex - something like Chuni’s World’s End chart for Dan-Dan Hayaku Naru metronome]
	- imitating an unconventional chart from another game
	- Following a dance routine 
***
