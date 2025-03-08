#
## Chart Preparation
Charts must follow a specific set of guidelines:

- 1:45 - 3:00 in length
- Can be reasonably argued that it would belong in an official rhythm game
	- Ported songs from other games automatically get a pass
- 2 empty measures at the beginning of song before the first meaningful beat (eg. start of the chart)
	- this depends on the song (i.e. if the silence is baked into the song already), but at least 1 measure
	- If this is not done, your chart will start too abruptly, and possibly overlap with the metronome
- End of Chart note is placed at least 1 measure full after the last meaningful input
***
## Note Placement
!!! note "Minimum note size for use should be 10.  However, use at least 12 when possible."
- BIGGER IS BETTER, especially on lower difficulties.
	- Really big notes (>20) can lead to visual clutter, calibrate usage scaling into higher difficulties
- Smaller notes can be used, but they need to be intentional (repeated pattern, thematic charting, slow sections of song)
- Consider using 14 for CW / CCW swipes to ensure the player can trigger enough sensors
- While starting hand tends to not matter as much in higher difficulties, starting with the right hand is generally preferred as it is the more common dominant hand. Generally chart flow takes precedence over which hand to start with. But from a neutral state, right or both is generally preferred.
	- In the same vein, patterns will generally start on the right of the play area, but keep into account overall flow of the chart

!!!info "The wider the movement you want, the bigger the note should be. Direct the player by using the appropriate note sizing."

!!! note "No need to chart every note in a song, especially compared to most traditional Rhythm Games." 
	Wacca is very arm intensive, so remember to put breaks.  Keep in mind that after a break, you should probably resume charting from the bottom third (so 4-8 on the clock basically) as a person will naturally reset their arms down.

Keep in mind lines of symmetry (there are 60 of them), especially to help keep a chart feeling fresh. However it’s generally better to just use the bottom third of the circle for the most part as reading patterns from the top is generally less common unless the chart flows up there.

Player momentum and inertia is important to keep in mind while charting. For example, a jump from a pattern that “locks” the player into position into movements that require the player to move quickly around the ring may be uncomfortable. Higher rating charts can get away with faster transitions as players are expected to be able to react to these patterns. 

!!! danger "Avoid opposing direction swipes and snaps spaced at a 16th measure apart"
	Allow for at least an 8th measure between each input. One or two tighter swipes/snaps may be ok. Left unchecked though, these patterns can become aggravating to play. Consider using chains in place of the proceeding swipes/snaps. This rule can be more lenient or strict as it is BPM dependent.

***
## Top Half vs Bottom Half
!!! info "Numbers referenced here correlate to positions on a clock"

The majority of the game is played in the lower half of the ring (4 - 8). Semi-frequent use of 2 - 3 and 9 - 10 positions are common in Experts, less common in Hard / Normal. Hold spins around the entire circle are the exception

!!! warning "Top section (10 - 2) note placements should be considered with care."
	Certain patterns are awkward or  difficult to execute when placed on the top side (eg. up/down snap bombs, trills). Down snaps are also quite tricky to hit on the top section. Dense patterns in the top section are also much harder to read.
***
## Hand Parity and Pattern Placement
- Shadow your charts by playing the chart in the editor to check that your hands end up where you expect the player to be playing.
- Test your chart with consideration that a player may hit notes using hands opposite of how you intend it to be played.
- Most patterns are meant to be hit by alternating hands, only occasionally you will see a pattern where one hand is hitting more than one note in a row.
!!! warning "Cheese is part of the game"
	Either chart around it or embrace it. 
	Ensure that all patterns can be resolved, or force the player to not be able to cheese patterns.
!!! danger "Avoid starting dense / difficult patterns with no warning" 
	(eg. trills on the side of the ring, top side notes with only bottom half patterns preceding).
	Guide the player into patterns by priming them beforehand.
***
## Game Mechanics
### Note Types
Note Type|When to use|Comments
:---:|-----|-----
![Touch Note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_touch.png)|<ul><li>Complex tap patterns easier to read than complex swipe/snap patterns due to simple input</li><li>Chording can be used to place emphasis on a specific note instead of using a Snap/Slide</li></ul>|<ul><li>General use for most sounds. Aside from certain gimmick charts, is the most common note type</li><li>Due to simpler input, is generally used more in complex patterns</li></ul>
![Snap Outward Note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_snap_out.png)|<ul><li>Can be used to end a touch pattern or end of a hold note</li><li>Due to more complex input, generally not used in super dense patterns</li><li>Can be used to place emphasis on a specific sound or on a kick</li></ul>|<ul><li>Asymmetric timing window</li></ul>
![Snap Inward Note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_snap_in.png)|<ul><li>Can be used to end a touch pattern or end of a hold note</li><li>Due to more complex input, generally not used in super dense patterns</li><li>Can be used to place emphasis on a specific sound or on a kick</li></ul>|<ul><li>Generally considered to be the harder note type to input</li><li>Asymmetric timing window
![Slide Left Note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_slide_left.png)|<ul><li>Can be used to end a touch pattern or end of a hold note</li><li>Due to more complex input, generally not used in super dense patterns</li><li>Can be used to place emphasis on a specific sound or on a kick</li></ul>|<ul><li>Asymmetric timing window</li></ul>
![Slide Right Note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_slide_right.png)|<ul><li>Can be used to end a touch pattern or end of a hold note</li><li>Due to more complex input, generally not used in super dense patterns</li><li>Can be used to place emphasis on a specific sound or on a kick</li></ul>|<ul><li>Asymmetric timing window</li></ul>
![Hold Note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_hold.png)|<ul><li>Generally used to indicate an extended sound, but can also be mixed with other note types for more technical sections regardless of what the music is (this is typically done in EXP or INF only)</li><li>Can be used to help break up a syncopated section|<ul><li>Compared to other games, has a somewhat generous release window (250ms)</li></ul>
![Chain Note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_chain.png)|<ul><li>Can be used for dense sections i.e. 16th notes at 300 bpm|<ul><li>While having a guaranteed window if inputted, due to the slightly smaller overall input window (see Note Judgment below), this can be harder to hit if replacing Touch notes for the same pattern</li></ul>
![R Note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_r.png)|<ul><li>Can be used to place greater emphasis on a specific sound</li><li>Amount of usage can be preference, but consider comments to the right|<ul><li>Available for all above note types</li><li>Plays a louder hit sound than other notes</li><li>Worth 2x the score of a regular note</li><li>The more R notes in a chart the lower the value of the non-R notes</li></ul>
![Bonus Note](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/note_bonus.png)|<ul><li>Can be used to place emphasis on a specific sound</li><li>Due to the Touch note Bonus sound being distinctly different (less percussion) from a normal Touch note, can be used to represent a variance in sound in a given song</li><li>Can be used more liberally without affecting scoring|<ul><li>Available only for Touch and Slide (Left or Right) note types</li><li>Plays a different hitsound compared to regular notes</li><li>Bonus Touch note hitsound plays a more distinctly different hitsound in game compared to Bonus slide notes</li><li>No effect on scoring, grants more life for the clear bar instead</li></ul>

### Note Judgement
WACCA’s timing system functions in a similar way to Chunithm; if two or more notes are within close proximity to each other, their judgment windows get cut off.

This means that notes in a high enough density will not have any windows other than marvelous, and can be freely hit by sliding on the touch panels, without the risk of losing accuracy.

You can enable an overlay in `Settings -> Rendering` to show these judgement windows in order to check if the windows are cut off.

It's important to note that if timing windows get cut off from overlaps in a pattern like a trill, the game will only register Marvelous or Miss judgements, which can kill FCs and be very annoying to play.  Use the overlap overlay to ensure that your patterns do not overlap unless you intend for it to be slid.

Correct|Incorrect
:---:|:---:
![A stream with timing windows that will not get cut off](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/overlap_good.png){250hw:250hw}|![A stream with timing windows that get cut off](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/overlap_bad.png){250hw:250hw}

Note Type|Good Timing Window in frames (Early/Late)|Great Timing Window in frames (Early/Late)|Marvelous Timing Window in frames (Early/Late)
:----:|:----:|:----:|:----:
Touch|6/6|5/5|3/3
Snap (Red)|10/-|8/10|5/7
Snap (Blue)|-/10|10/8|7/5
Slide (Orange)| 10/-|8/10|5/5
Slide (Green)| 10/-|8/10|5/5
Hold|6/6|5/5|3/3
Hold End|if released for >250ms then re-held|-/-|7/7
Chain|-/-|-/-|4/4

#### Avenue-ing
Due to the way the game cuts off hitboxes, a hold end will cut off the early window of any notes on said hold end. 

Charts like Avenue (hence the name) use this trick to have notes on top of holds without risk of having it be triggered early. 

It's recommended to do this unless you specifically want to keep the early window as a challenge.

***
## Patterns

### Terminology
Term|Description|Example
:----:|:----:|:----:
Trill / Drill|Long 16th note run that follows a continuous path|![Odin [Expert 13] ｜ Measure 38](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/drill.png)
Anchor|Patterns where one hand remains (is “anchored”) in place while the other hand executes patterns on the rest of the ring|![EPHMR [Expert 13] ｜ Measure 33](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/anchor.png)
Jumps|A pattern forcing quick jumps from one side of the ring to another.|![回レ！雪月花 / Maware! Setsugetsuka [Inferno 13+] ｜ Measure 6](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/jumps.png)
One-handed chord (aka bracket or just chord)|Two notes meant to be hit with one hand|![Ready Go [Expert 12] ｜ Measure 14](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/1hc.png)
Two-handed chord (aka “Double”)|Two notes meant to be hit with both hands/one hand each.|![Dimension Hacker [Inferno 14] ｜ Measure 17](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/2hc.png)
Cross hands / Cross over|Patterns which require the player to cross one arm over/under another arm|![Purple Skies [Expert 12] ｜ Measure 27](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/crossover.png)
Tap Slides a.k.a. Fake Slides|Consecutive tap notes that expect the player to slide the note rather than tap them. This can either be sliding/scrubbing in a static position or following the position of consecutive notes. This works due to how judgment windows for notes work (see: [Note Judgement](https://siamesederp.github.io/MercuryMapper-Tutorial/Charting/#note-judgement)). Compared to a similar slide using only chain notes, this pattern requires the player to be moving the entire way through the pattern to register each note. This is mostly restricted to level 13+ and higher.|![BPM=RT [Expert 13+] ｜ Measure 22](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/tapslide.png)![ソロモン・ナイト/ Solomon Night [Expert 13] ｜ Measure 78](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/fakeslide.png)
Multi-swipe snap patterns|Swipe and snap patterns that appear on the same Beat|![インドア系ならトラックメイカー/Trackmaker [Expert 12+] ｜ Measure 59](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/trackmaker.png) ^(This swipe style is also called called Trackmaker)^![Gashatt [Expert 12] ｜ Measure 44](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/multi_swipe.png)

***
### Legal Patterns
Keep in mind that Wacca is not an individual finger game, a common mistake people make when starting out is charting like the game is chunithm or a button game (patterns that use hand + thumb are ok)

- By raw sensor count, Wacca has 15 times the number of sensors as Chunithm, and 3.75 times if only considering CCW/CW directions
!!! warning "Legal, but hard, patterns found in certain charts in the game (eg. Lethal Weapon, Poseidon, Cloud IX, MNK Inf) can be charted into a Wacca Plus chart, but strongly consider the playability and fun of the chart when charting."

One-hand chords compared to Chunithm or other touch games can be hard to hit, so try using them sparingly. 

Touch note slides are generally bound to high difficulties (13+ or above)

In general, overlapping notes are not great from a readability perspective, however there are two exceptions:

- Overlapping hold notes and any notes on top of hold notes
- Chain notes
	- This is basically exclusive to 14s as a means of making swipe/snap patterns stricter (similar to chords but more lenient):

	![Ouvertüre [Inferno 14] ｜ Measure 103](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_strict_1.png){width=49%} ![Super Emulator [Expert 14] ｜ Measure 46](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_strict_2.png){width=49%}

	- However, arguably not necessary depending on the pattern

	![Invisible Frenzy (Camellia's "593: Insanely Fluctuated" Remix) [Expert 14] ｜ Measure 114](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_strict_3.png){width=32.5%} ![EPHMR [Inferno 14] ｜ Measure 92](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_strict_4.png){width=32.5%} ![DUAL BREAKER XX [Expert 13+] ｜ Measure 80](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_strict_5.png){width=32.5%}

You can find all official charts at [mp.yello.ooo](https://mp.yello.ooo/) if you want to study them, it doesn't come with audio though.
***
### Input Guidance
When placing swipes in the middle of holds, consider how the player’s hand should be moving and pattern to avoid causing early inputs
- This includes using hold ends to prevent early input	
- Can be done by adding hold start right after hold end or start multiple hold notes and and one hold note at each swipe/snap

When using a swipe to transition to a new pattern, consider the likelihood of the player swiping into the notes on accident

When ending a pattern with a swipe, try to keep at least a beat of distance between it and the start of the next pattern
- This is a very malleable guideline as it is possible to swipe then have a touch note within an eighth note away, but the guideline above generally helps

!!! info "If a swipe or snap is on top of a hold end, consider making it larger than the hold end to allow the player to read it easier"
	For swipes (CCW or CW movement), when increasing size, it tends to help if the side where you want the player to swipe protrudes out

	![A hold leading into an orange silde](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_into_slide.png){width=50%}

	For snaps, just making them two units larger symmetrically will help them pop out more

	![A hold leading into a red snap](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_into_snap.png){width=50%}
!!! danger "Avoid chain note slides right before starting a touch note section."
	Incorrect|Correct
	:----:|:----:
	![Conflict [Expert 13] ｜ Measure 9](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_slide_bad.png)|![XODUS [Expert 14] ｜ Measure 9: Chains to the side of tap notes section](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/chain_slide_good.png)


***
###Spins
The speed at which spins (i.e. amount of units moved per beat) is generally bpm-based, but at 200 BPM for example, a hold note or chain note spin that completes one rotation in one 4/4 time measure is generally a decent speed for an Expert.

Some interesting notes about doing spins:

- Having a hold move at 5 units per 12th note will go around the circle one time exactly.
- A hold moving at 4 units per 16th note will go around the circle one time + 4 units.
- In general, having the number of units a spin or hold movement moves be a multiple of the size of the note can help with patterning (i.e. having a note size 15 move 5 or 3 units at a time).

!!! danger "For wider spins please make the notes bigger, however also keep in mind how cheesable it becomes (or play into it)"


***
## Decoratives
### Masks
Use masks to direct the player on where the next patterns are going to be. Notes very rarely appear where there is no mask, so masks should be in place before a note reaches the playfield.

!!!info "Size 1 CW/CCW or Size 2 Center masks will appear instantly. Use them if you want the mask to appear without rotating into position."

***
### Hi-Speed Changes
Avoid jump scare speed ups outside of Uppers (>=13) / Inferno charts. Consider the sight readability of charts when designing the gameplay around hi-speed changes.

Be mindful of how slow downs and speed ups are transitioned into. Accelerate and decelerate hi-speed as much as possible to give the player a chance to react.

!!! danger "Stops (Hi-speed < 0.01) are notorious for causing the game to act funny or even freeze the game. Be mindful of using them and test the chart extensively."

Other gimmicks like the built in reverse are complicated systems usually reserved for specific charts in the game (Like you are the miserable). They’re very finicky and can easily break a chart if not used correctly. The same goes for the built in Stop system, it is recommended to use Hi-speed values for this purpose instead.

***
### Chains on Hold Notes
If you have a moving Hold Note with Chains, keep their size equal or greater than the size of the Hold Note.

***
### Letters and Other Hold Art
Use examples found in official charts to ensure Hold art doesn’t cause dropped inputs. Some charts that have Hold art are: [The Light](https://youtu.be/rD7CjAep_7o?t=88) (Expert 12), [Brain Power](https://youtu.be/avM2UX0guSE?t=74) (Expert 13), [We are the Massive New Krew](https://youtu.be/_TF3QV-Amks?t=85) (Expert 13)

![The Light [Expert 12] ｜ Measure 56](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_art_w_ai.png){width=49%} ![Brain Power [Expert 13] ｜ Measure 49](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_art_b_p.png){width=49%} ![We Are The Massive New Krew [Expert 13] ｜ Measure 26](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_art_m_n_k.png){width=49%}![私はNo 1！[Expert 12] ｜ Measure 21](https://raw.githubusercontent.com/siamesederp/MercuryMapper-Tutorial/refs/heads/main/images/hold_art_anchor.png){width=49%}
***
## Normal Charting
**Normal Characteristics: easy to read, easy to execute**

Normal charts should be charted & expected to be played at default scroll speed (1.5). It is also recommended to test Normal charts with another handicap (eg. gloveless, one handed, playing with back of hand or fist) to simulate how a person new to Wacca would play.

!!! warning "Minimize or zero usage of the top half."
	Lower level players have not yet developed the muscle memory of playing top side apart from spins. If you are moving around the circle, you can go through the top, but don’t stay there long and always lead into & out of it.
!!! warning "Most beginner players also look directly at the judgement line. Not the center." 
	There's a good chance they literally won't see a note if it approaches from above.

Trend towards using larger note sizes (12-15).

Utilize holds for filler and the hold ends as a “note” to fill in blank space as they do have a hitsound to them.

Expect players to treat Chains as Taps (people skip the tutorial lol). Be aware that Chains have a smaller overall hit window (±12 frames) than Taps (±14 frames).

Up / down snaps are rare in Normal charts below 6. Avoid using them and stick to CW/CCW swipes.

Mask effects at this level should be very minimal as they can be very distracting for newer players

Refer to [this playlist](https://www.youtube.com/playlist?list=PLkt3uTWW5wfvvAn0Uwk7geTgpRr20k-zW) to get a good grasp on how Normal charts should flow.

***
## Hard Charting
**Hard Characteristics: easy to read, trickier than normal to execute**

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
**Expert Characteristics: may require some studying, moderate difficulty to execute**

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

(see [Terminology](https://siamesederp.github.io/MercuryMapper-Tutorial/Charting/#terminology) for definitions) 

Difficulty of Expert charts tend to correlate to the number of tech patterns used in a chart. Lower level Experts employ a few patterns to make them distinct. Upper level Experts will expect the player to utilize more tech skill sets.

A common theme in Experts are ones where one hand does a simple pattern and the other hand follows a more complex movement that requires more focus i.e. tracking notes that move in a wider range. 

***
## Inferno Charting
**Inferno: hard to read, hard to execute**

- Inferno is called inferno because it really works out your upper arms
- For some reason inferno charts occasionally use alternate song cuts
- Inferno charts have a LOT more gimmicks than experts (Both visual and patterning)
- Lower level Infernos can be a thing!  Usually if it’s a chart that is:
	- Being VERY gimmicky (but not challenging) [ex - something like Chuni’s World’s End chart for Dan-Dan Hayaku Naru metronome]
	- imitating an unconventional chart from another game
	- Following a dance routine 
- When putting hold notes on top of larger hold notes (Think full 360 holds), it helps with visibility to put a tap note on the start of each smaller hold. See charts like Mobius and Overture INF. You should honestly also do this for Experts as well
***
