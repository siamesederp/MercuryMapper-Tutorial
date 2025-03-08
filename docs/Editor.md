#
## Installing the editor
### Download
??? info ":fontawesome-brands-windows: Windows/:fontawesome-brands-linux:Linux"
	1. Go to the [MercuryMapper GitHub repository](https://github.com/Yasu3D/MercuryMapper).
	2. In the **Releases** section, find the latest release (it’s usually at the top of the list).
	3. Under the latest release, find the assets section and download `MercuryMapper-Win-Portable.zip` or `MercuryMapper-Linux-x64.zip`.
	4. Alternatively, you can download from one of these links:

		[:fontawesome-brands-windows: Windows](https://github.com/Yasu3D/MercuryMapper/releases/latest/download/MercuryMapper-Win-Portable.zip)

		[:fontawesome-brands-linux: Linux (x64)](https://github.com/Yasu3D/MercuryMapper/releases/latest/download/MercuryMapper-Linux-x64.zip)

??? info ":fontawesome-brands-apple: OS X"
	Due to the requirements to develop for mac, the mac version is seperately maintained by h3llo_wor1d. (No guarantees this works/doesn't break)

	<div comment = "No releases on the github yet, remove this div when there's actually a build" style = "display:none">1. Go to the [MercuryMapper Mac Repository](https://github.com/h3llo-wor1d/MercuryMapper-MacOS)
	2. In the **Releases** section, find the latest release (it’s usually at the top of the list).
	3. Under the latest release, find the assets section and download `MercuryMapper-Win-Portable.zip`
	4. Alternatively, you can download from one of these links: </div>

	[:fontawesome-brands-apple: OS X (ARM64)](https://github.com/h3llo-wor1d/mercury-mac/releases/download/v1/osx-arm64.zip)

### Install
!!! info "This is for Windows, but the core concepts can be transferred to other operating systems."
1. Once the download is complete, navigate to your download location.
2. Right-click the `MercuryMapper-Win-Portable.zip` file and select **Extract All** or use a tool like [7zip](https://7-zip.org/) to extract it.
3. Navigate to the extracted folder.
4. Locate and run `MercuryMapper.exe`
***
## Setting up audio
***
#### Audacity/Tenacity
!!! info "This guide will use audacity, but the core concepts can be transferred to other audio editors."
1. Open [Audacity](https://www.audacityteam.org/download/) or [Tenacity](https://tenacityaudio.org/) and import your song.
2. Insert one or two measures of silence at the start of the audio, use one if you want the song to start immediately after the metronome.
3. Ensure the song is synced so that the first beat lands at the start of a measure, you can use `Generate -> BPM Labels` to check this.

!!! warning "BPM Labels is not a stock plugin"
	If you don't have it, download it here: [`bpm-labels.ny`](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/resource/bpm-labels.ny)

Example image, where the audio starts on measure 2 and the first played beat is on measure 4:
![BPM_Label_Image](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/BPM_Label.png)

4. Export the edited audio using `File -> Export Audio`, It's recommend to export as WAV as it tends to work the best.
### Initial Chart Setup
1. In the editor, select `File -> New` to create a new chart.
2. Set the BPM and Time Signature here, if you don't have them you can usually find them pretty easily or calculate them yourself.
3. In the right of the editor, open `Chart Info` and fill out all the information. 

	3.1. See the [User Interface Section](https://rentry.org/MercuryMapper/#right) if any fields are confusing 

*** 
## Basics
***
###Hitsounds
Download the hitsounds zip here: [`hitsounds.zip`](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/resource/hitsounds.zip).

Right-click the `hitsounds.zip` file and select **Extract All** or use a tool like [7zip](https://7-zip.org/) to extract it.

Open the settings, then select Audio, from here you can change hitsound volume and assign the audio files to each hitsound type.

###Keybinds

!!! note "These are rebindable!"

This is a list of all the keybinds the editor uses, grouping is the same as the settings menu in-editor.

??? info "File"
	`Ctrl + N`  - Creates a new chart

	`Ctrl + O` - Opens an existing chart

	`Ctrl + S` - Saves the current chart

	`Ctrl + Shift + S` - Saves the current chart with a new file name or location

	`Ctrl + Alt + S` - Opens the settings menu
??? info "Edit"
	`Ctrl + Z` - Undoes the previous action

	`Ctrl + Y` - Redoes the previous action

	`Ctrl + X` - Cuts the selected note(s)

	`Ctrl + C` - Copies the selected note(s)

	`Ctrl + V` - Pastes the copied note(s)
??? info "Playback"
	`Space` - Begin playback

	`Ctrl + L` - Toggle Loop

	`Ctrl + ,` - Set Loop Start

	`Ctrl + .` - Set Loop End

	`Add` - Increase playback speed

	`Subtract` - Decrease playback speed

	`Right` - Jump Measure Forward

	`Left` - Jump measure back
	
	`Up` - Jump Beat Forward

	`Down` - Jump Beat Back

	`Ctrl + K` - Add Comment
??? info "Selection"
	`Shift + W` - Highlight Next Note

	`Shift + S` -  Highlight Previous Note

	`Shift + Q` - Highlight Nearest Note

	`A` - Select All

	`Alt + A` - Deselect All

	`Shift + Alt + A` - Checker Deselect

	`Ctrl + B` - Box Select

	`Shift + Space` - Select Highlighted Note

	`Shift + R` - Select Note Collection References
??? info "Edit Note Collections"
	`Return` - End Note Collection

	`Shift + Return` - Edit Note Collection

	`Shift + B` - Bake Selected Notes

	`Ctrl + Shift + B` - Bake Selected Notes \[No Render]

	`Ctrl + H` - Stitch Note Collection

	`Alt + H` - Split Note Collection

	`Shift + H` - Insert Segment

	`Ctrl + Delete` - Delete No-Render Segments
??? info "Edit Notes"
	`I` - Insert a note at current size and position

	`Shift + E` - Edit selected notes' shape

	`Ctrl + E` - Edit selected notes' type

	`Ctrl + Shift + E` - Edit selected notes' shape and type

	`Shift + M` - Mirror current selection

	`Ctrl + R` - Reverse current selection

	`Delete` - Deletes current selection

	`Shift + Up` - Increase selected notes' size 1 unit

	`Shift + Down` - Decrease selected notes' size 1 unit

	`Shift + Right` - Shift selected notes right one unit

	`Shift + Left` - Shift selected notes left one unit
	
	`Ctrl + Shift + Up` - Increase the first selected notes` size by one, second by two, third by three, etc.

	`Ctrl + Shift + Down` - Decrease the first selected notes` size by one, second by two, third by three, etc.

	`Ctrl + Shift + Right` - Shift the first selected note right by one, second by two, third by three, etc.

	`Ctrl + Shift + Left` - Shift the first selected note left by one, second by two, third by three, etc.

	`Ctrl + Up` - Shift selected notes forward in time

	`Ctrl + Down` - Shift selected notes backward in time

	`V` - Set hold segment render flag to true

	`Alt + V` - Set hold segment render flag to false

	`Ctrl + M` - Flip note direction

	`Ctrl + N` - Convert to instant mask

	`Shift + P` - Paint Selected Traces

	`Shift + L` - Set Scroll Layer

??? info "Note Types"
	`1` - Set note type: Touch

	`2` - Set note type: Slide (Clockwise)

	`3` - Set note type: Slide (Counterclockwise)

	`4` - Set note type: Snap (Forward)

	`5` - Set note type: Snap (Backward)

	`6` - Set note type: Chain

	`7` - Set note type: Hold

	`8` - Set note type: Add Mask

	`9` - Set note type: Remove Mask

	`0` - Set note type: Trace

	`oem4` - Set note type: Damage

	`Shift + 1` - Select note modifier: None (If using masks, set mask style to clockwise)

	`Shift + 2` - Select note modifier: Bonus (If using masks, set mask style to counterclockwise)

	`Shift + 3` - Select note modifier: R-Note (If using masks, set mask style to center)
??? info "Rendering"
	`Shift + Add` - Increase note speed

	`Shift + Subtract` - Decrease note speed

###User Interface
####Top
??? info "File"
	<h3>`New` - Create a new chart<h3>
	<h3>`Open` - Open an existing chart</h3>
	<h3>`Save` - Save the current chart</h3>
	<h3>`Save As` - Save the current chart with a new name or location</h3>
	***
	<h2>**Export**</h2>
	<h3>`Export for Mercury` - Exports in a format compatible with WACCA</h3>
	<h3>`Export for Saturn/Create Saturn Folder` - Exports for use in [Saturn](https://saturn.yasu3d.art/docs/#/)</h3>
	***
	<h2>**Online**</h2>
	<h3>`Create Session` - Creates an online session that other people can join.</h3>
	<h3>`Join Session` - Join someone elses' online session</h3>
	<h3>`Disconnect` - Disconnect from the current session</h3>
	***
	<h3>`Settings` - Open the settings menu</h3>
	***
	<h3>`Exit` - Closes the MercuryMapper program</h3>
??? info "Edit"
	<h3>`Undo`- Undoes the last action</h3>
	<h3>`Redo`- Redoes the last undone action</h3>
	***
	<h3>`Cut` - Copy and delete current selection</h3>
	<h3>`Copy` - Copy current selection</h3>
	<h3>`Paste` - Paste current selection at current position</h3>
??? info "Select"
	<h3>`Select All` - Selects all objects</h3>
	<h3>`Deselect All` - Deselects all objects</h3>
	<h3>`Checker Deselect` - Deselects every other selected object, starting with the first selected note
	***
	<h2>**Select Similar**</h2>
	<h3>Selects similar notes to the one highlighted</h3>
	<h3>`Filter Selection` - De-selects every note that doesn't match the filter</h3>
	<h3>`Threshold` - How many units of variance is tolerated (Ex: a size 10 note with a threshold of 2 will select size 8-12 notes but not size 13+/7- notes)</h3>
	***
	<h3>`Box Select` - Creates a box that selects everything that is inside of it. When activated, the user will be given a note-style object that they can shape by clicking and dragging around the ring to define width, after the mouse is released the cursor can be moved to change depth, a final click will finalize the selection.</h3>
	***
	<h3>`Select Note Collection References` - Selects all segments in note collections that currently have selected segments</h3>
	<h3>`Select Highlighted Note` - Selects the highlighted (red) note</h3>

??? info "Tools"
	<h3>`Mirror Chart` - Mirrors the chart on the current axis set in `Modify Notes - Mirror Axis`</h3>
	<h3>`Shift Chart` - Shifts the chart by specified amount, useful for (re)syncing a chart to audio</h3>
	***
	<h3>`Fix off-by-one Errors` - Rounds the timestamps of all non-hold-segment notes to the nearest 10s digit. (Ex: 1919 > 1920, 479 > 480, 241 > 240)</h3>
	***
	<h3>`Scale Selection` - Changes the time scale of the currently selected notes. Values below one will bring the notes closer together in time, while values above one will increase the distance</h3>
	***

	<h2>**Reconstruct Note Collections**</h2>
		<h3>Applies to entire note collection, even if only part is selected</h3>
		<h3>`Collection to Collection` - Re-traces a note collection with a fixed interval between segments, useful for making extra segments to use with jagged note collections</h3>
		<h3>`Note Collection to Chain` - Same as Collection to Collection, but segments are converted to chains afterward, useful for creating slides with chains or overlaying chains on a hold</h3>
	***
	<h3>`Generate Jagged Note Collections` - Moves segments of the hold to give it a jagged shape, reconstruct holds can be used to increase segment density for denser spikes.</h3>
	***
	<h3>`Proofread` - Checks for problems with your chart, very sensitive so will point out legal patterns. It's recommended to check anywhere it warns to ensure the chart follows good practices.</h3>

####Left
<div comment="very ugly, should be replaced"></div>
![Bottom UI](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/UI_Left.png)
####Right
??? info "Chart Info"
	<h3>The Current Filename</h3>
	***
	<h3>Assorted Note Count Statistics</h3>
	***
	<h3>`Version` - The version of the chart, this not displayed in-game</h3>
	<h3>`Title` - The title of the song</h3>
	<h3>`Ruby` - The title with the kana reading of the kanji, used for sorting/bingo.</h3>
	<h4><ul><li>For latin alphabet - full width characters can be found at: [https://lingojam.com/FullWidthTextGenerator](https://lingojam.com/FullWidthTextGenerator)</li><li>For kanji and kana - hiragana: [https://www.lexilogos.com/keyboard/hiragana.htm](https://www.lexilogos.com/keyboard/hiragana.htm)</li><li>Alternatively, [https://romajidesu.com/translator/](https://romajidesu.com/translator/) - click "Kana" instead of "Romaji"</li></ul></h4>
	<h3>`Artist` - The author of the song</h3>
	<h3>`Chart Author` - The author of the chart, probably you</h3>
	<h3>`BPM Text` - The BPM to display on the Song Select Screen.</h3>
	***
	<h3>`Chart Background` - Saturn only, changes the styling of the background during gameplay.</h3>
	***
	<h3>`Diff(iculty)` - The difficulty level of the chart, includes a 5th option of `WORLD'S END` in reference to Chunithm that is used for experimental/joke charts.</h3>
	<h3>`Level` - The decimal difficulty value
	<h4><ul><li>The game starts '+' values at .7, so a 13.6 is a 13 while a 13.7 is a 13+</li><li>The game doesn't support 14+, so difficulties of 14.7-14.9 should be avoided</li></ul></h4>
	<h3>`Clear Threshold` - Determines how much score is needed to clear</h3>
	<h4><ul><li>It's recommended to use `0.5` for Normal, `0.6` for Hard, and `0.83` for Expert/Inferno</li></ul></h4>
	***
	<h3>`Preview` - Preview start/length fields are the time in seconds for where the preview starts/how long it lasts respectively</h3>
	<h4><ul><li>The preview time is used for what is heard during song select and song preview</li><li>The preview button will play the section that would be previewed and then stop</li></ul></h4>
	***
	<h3>`BGM Offset` - Offsets the audio relative to the chart, it's recommended to synchronize the audio itself (see: [Setting Up Audio](https://rentry.org/MercuryMapper/#setting-up-audio))</h3>
	<h3>`BGM` - Button to select the audio file for the chart, displays the currently loaded BGMs' filename below the selection button</h3>
	***
	<h3>`BGA` - The `Background Animation` (aka Movie/Video), does not display in-editor</h3>
	***
	<h3>`Jacket` - The jacket is the image for the song (aka album art, cover, etc)</h3>
	<h4><ul><li>Has current jacket filename displayed over the jacket selection button</li><li>Current jacket is shown below the button</li></ul><h4>
??? info "Selection Info"
	<h3>Shows how many notes are selected (this info also appears in blue text next to the gimmick selector)</h3>
	<h3>Main use is to change the highlighted note/view information about the currently highlighted note</h3>
??? info "Quick Settings"
	<h3>`Note Speed` - How fast the notes scroll during playback, values are the same as scroll speed in WACCA</h3>
	<h3>`Beat Division` - The amount of grey beat lines per measure</h3>
	<h3>`Show Speed Changes` - Toggles if speed changes are shown both while editing and during playback, includes stops, useful for doing complex HiSpeed sections</h3>
	<h3>`Draw No-Render Holds` - No-Render hold segments are used exclusively for judgement, and as the name implies, are not rendered</h3>
	***
	<h3>`Show Timing Windows` - Shows the timing windows of each note</h3>
	<h4><ul><li>It's recommended to enable `Cut Early on Holds` and `Cut Overlapping` with all windows enabled to ensure all patterns are possible/fair to hit, see [Game Mechanics](https://siamesederp.github.io/MercuryMapper-Tutorial/charting#note-judgement) for more info</li></ul></h4>
	***
	<h3>`Music Volume` - A controls music volume
	<h3>`Hitsound Volume` - Changes all hitsounds volume</h3>
	<h3>`Start Metronome` - The metronome that plays for 1 measure at the start of the chart</h3>
	<h3>`Constant Metronome` - A constant metronome</h3>
??? info "Modify Notes"
	<h3>`Edit [Shape only]` - Changes the selected note(s) size and position to be that of the cursor.</h3>
	<h3>`Edit [Type only]` - Changes the selected note(s) type to be that of the cursor, includes bonus type.</h3>
	<h3>`Edit Selection` - Changes both the shape and type of the selected note(s) to be that of the cursor</h3>
	<h3>`Delete Selection` - Deletes all currently selected objects</h3>
	***
	<h3>`Mirror Axis` - Change the axis on which mirror operations are performed (visualized by a white line on hover)</h3>
	<h3>`Mirror` - Mirror all currently selected notes along the mirror axis</h3>
	<h3>`Reverse` - Reverse the order in time of the currently selected notes</h3>
	<h4><ul><li>Example: if you have a chain selected at measure 1, and a tap selected at measure 2, this button will move the tap to measure one and the chain to measure 2</h4></ul></li>
	***
	<h3>`Flip Note Direction` - Flips the direction of a Slide, Snap, or Mask without mirroring it's position</h3>
	<h3>`Convert to Instant Mask` - Subdivides the currently selected mask to smaller pieces to cause the mask to instantly add/remove the section</h3>
	***
	<h3>`Trace Color` - Sets the color for the next placed traces</h3>
	<h3>`Paint Selected Traces` - Applies the selected color to all selected traces</h3>
	<div comment = "scroll layer shit?" style = "display:none">
	***
	<h3>`Scroll Layer`</h3>
	</div>
	***
	<h3>`Hold Bake/Ease` - Bake hold will fill the area between a selected segment of a hold and the next segment of a hold with more segments to achieve a smoother result</h3>
	<h4><ul><li>The easing type to the left of the bake button determines where the inserted segments are placed</li><li>If you want your non-linear eases to look closer to official charting (see: less smooth), use eases and then reconstruct hold to 1/16th intervals. After that delete any unnecessary extras, and bake linearly.</li><li>Examples of non-linear curves can be seen [at this website](https://easings.net/)</li></ul></h4>
	<h3>`Insert Segment` - Inserts a hold segment at the current time with the same size/position as the cursor in a hold if one of its' segments are highlighted.</h3>
	***
	<h3>`Stitch Note Collection` - If only a hold end and a hold start are selected, they will fuse into a singular hold.</h3>
	<h3>`Split Note Collection` - Splits a hold in two at the highlighted segment</h3>
	***
	<h3>`Set Render Type` - No-Render hold segments are used exclusively for judgement, and as the name implies, are not rendered</h3>
	***
	<h3>`Delete No-Render Segments` - Deletes all selected No-Render segments</h3>
??? info "Miscellaneous"
	<h3>`Add Comment` - Adds a comment at the current measure.</h3>
	<h3>`Set Loop Start/End` - Place either a loop start or loop end at the current measure, visualized on the playback slider as a green and red line respectively</h3>

####Bottom
<div comment="very ugly, should be replaced"></div>
![Bottom UI](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/UI_Bottom.png)

###Settings
<div comment = "Need to finish" style = "display:none">
??? info "Appearance"
	<h2>***Colors***</h2>
	<h2>***Rendering***</h2>
</div>
??? info "Editor"
	<h3>`Quantize on Pause` - Whenever you pause, snaps to the nearest beat based on your beat division. (Highly recommended)</h3>
	<h3>`Highlight Placed Note` - Automatically highlight a note when you place it.</h3>
	<h3>`Limit to Mercury Bonus Types` - If unchecked, allows bonuses to be used on any note (Not compatible if charting for mercury).</h3>
<div comment = "Need to finish" style = "display:none">
	<h2>**Keymap**</h2>
	<h3>Change the bindings for keys, see [Keybinds](#keybinds) for functions and default binds</h3>
	<h2>**Audio**</h2>
	<h3>`Hitsound Offset`</h3>
	<h3>`Mute Hitsounds on preview`</h3>
	<h3>`Start Metronome`</h3>
	<h3>`Constant Metronome`</h3>
</div>

###Note Placement
- You can adjust note size and position by clicking and dragging in the viewport or with the sliders found in Current Note Settings on the left.
- Place notes by pressing `I` or by clicking the button under those sliders.
- Select note type with the colored buttons in the top left or by pressing number keys.
- Place Bonus/R Notes by using the buttons under the note type panel to change bonus type.
####Holds
- Once you place a hold note, you can only place hold segments until you finish the hold note.
- To finish a hold note place the last segment and then click the `End Note Collection` button next to the insert button.
####Selecting, Editing, Deleting
- To select a specific note, `Ctrl + Left Click` or scroll to it and click `Nearest` in the `Selection Info` tab. If there are multiple notes at once, you can click `< Previous` or `Next >` while highlighing to cycle though them.
- Highlighting and Selecting are two different things
	- Highlighting (Red) is used to select certain notes (useful when overlaps are present) and to view information in the `Selection Info` tab
	- Selecting (Blue) doesn't show info in the `Selection Info` tab and can select multiple notes at once.
- To delete a note, either undo with `Ctrl + Z` or select a note and press `Delete`/click `Delete Selection` in the `Modify Notes` tab.
- To edit the type/size, you can use the [Edit Note](https://rentry.org/MercuryMapper/#edit-notes) binds or use the `Edit [Shape]` and `Edit [Type]` buttons to change the selected note into the shape/type of the currently selected shape/type.
- MercuryMapper converts copied sections to text in modern versions, so you can paste between windows or even paste into discord to share a pattern.
###Gimmicks
####Hi-Speed
- Can be used to slow down or speed up the scroll speed
- If a hold that moves/changes size is in the view port during a really slow hispeed (under 0.01), the game may have issues/crash.
####Stop
- Stops the movement of notes, effectively a 0 hispeed
- If a hold that moves/changes size is in the view port during a stop, the game may have issues/crash.
####Reverse
- Creates a section where notes scroll backward before playing back normally
- Almost exclusively used when referencing another game that does it