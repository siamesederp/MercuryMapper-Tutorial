;nyquist plug-in
;version 3
;type generate
;name "BPM Labels..."
;action "Generating Labels..."
;info "by Steve Daulton (www.easyspacepro.com). GPL v2.\n"

;; bpm-labels.ny by Steve Daulton. Sept 2011.
;; Sub-dividing beats option added Oct 2012
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html

;; Authors Note:
;; This plug-in has been defined as an Generate type plug-in
;; so that the labels may be started at an arbitrary time
;; without making a selection.

;control ibpm "Initial Tempo" real "BPM" 120 30 300
;control change "Speed Up/Slow Down by" real "BPM" 0 -200 200
;control bpb "Beats per Bar" int "" 4 1 32
;control bars "Number of Bars" string "number" "16"
;control divisions "Labels per Beat" choice "Bars Only,1 per Beat,2 per beat,3 per Beat,4 per Beat" 1 
;control ltext "Label Text" choice "bar:beat,bars (only),beats (only),none" 0 
;control bnum "Bars Numbered from" string "number" "1"
;control swing "Swing" real "%" 0 -50 50
;control randb "Randomize Beats" real "%" 0 0 100

(setq labels ()); initialise label list
(setq err ""); initialise error message
(setq fbpm (+ ibpm change))


; function to convert a string into a list
(defun string-to-list (string)
	(read (make-string-input-stream (format nil "(~a)" string))))

; calculate time interval to next beat
(defun interval (itempo tempochange count numbars)
; usually sounds more musical to keep steady tempo within a bar
; and change the tempo each bar.
	(setq tempo (+ itempo (* count (/ tempochange (max 1 (1- (float numbars)))))))
	(setq interval (/ 60.0 tempo)))
	
(defun swingit (interval beatnum swing)
	(if (= swing 0) interval
		(if (evenp beatnum)
			(+ interval (* interval (/ swing 100.0)))
			(- interval (* interval (/ swing 100.0))))))

(defun randomize (interval rfactor)
	(if (= rfactor 0) 0
			(* interval (-(rrandom)0.5)(/ rfactor 100.0))))

; make a single label
(defun makelabel (format time bar beat)
  (if (or (> divisions 0)(= beat 1))
      (progn
        (setq text (case format
          (0 (format nil "~a:~a" bar beat))
          (1 (if (= beat 1)(format nil "~a" bar)""))
          (2 (format nil "~a" beat))
          (T "")))
        ;; add interbeat labels before beat
        (when (> (+ bar beat) 2)
          (inter-beat-label time))
        (list time text))
      nil))

(defun inter-beat-label (time)
  (let ((last-time (car (car labels))))
    (case divisions
      (2 (let ((half-beat (/ (- time last-time) 2.0)))
           (push (list (- time half-beat) "") labels)))
      (3 (let ((third-beat (/ (- time last-time) 3.0)))
           (push (list (- time third-beat) "") labels)
           (push (list (- time (* 2 third-beat)) "") labels)))
      (4 (let ((fourth-beat (/ (- time last-time) 4.0)))
           (push (list (- time fourth-beat) "") labels)
           (push (list (- time (* 2 fourth-beat)) "") labels)
           (push (list (- time (* 3 fourth-beat)) "") labels))))))
           

; Error Checking
(if (< ibpm 1)(setq err (strcat err (format nil 
"Initial tempo is ~a bpm but must be greater than 1 bpm.~%" ibpm))))
(if (> ibpm 600)(setq err (strcat err (format nil 
"Initial tempo is ~a bpm but must be less than 600 bpm.~%" ibpm))))
(if (< fbpm 1)(setq err (strcat err (format nil 
"Final tempo is ~a bpm but must be greater than 1 bpm.~%" fbpm))))
(if (> fbpm 600)(setq err (strcat err (format nil 
"Final tempo is ~a bpm but must be less than 600 bpm.~%" fbpm))))
(if (< bpb 1)(setq err (strcat err (format nil 
"There must be at least 1 beat per bar.~%"))))

; convert bnum to integer
(setq bnum (first (string-to-list bnum)))
(if (numberp bnum)
	(setq bnum (truncate bnum))
	(setq bnum 1))

; convert bars to integer
(setq bars (first (string-to-list bars)))
(if (numberp bars)
	(if (> bars 0)
		(setq bars (truncate bars))
		(setq err (strcat err (format nil
"'Number of Bars' must be greater than 0.~%"))))
	(setq err (strcat err (format nil 
"'Number of Bars' is not a number.~%"))))

(if (> (* bpb bars) 5000)(setq err (strcat err (format nil 
"Maximum number of labels is 5000.~%~a bars with ~a beats per bar~%will create ~a labels.~%" 
bars bpb (* bars bpb)))))

(if (> (length err) 0)
	(format nil "Error.~%~a" err)
	(let ((label (makelabel ltext 0 bnum 1))
        (ltime 0))
		(do ((barnum bnum (setq barnum (1+ barnum))))
				((= barnum (+ bnum bars))labels)
			(setq interval (interval ibpm change (- barnum bnum) bars))
			(do ((beatnum 1 (1+ beatnum)))
					((= beatnum (1+ bpb)) labels)
				(setq label (makelabel ltext (+ ltime (randomize interval randb)) barnum beatnum))
				(setq ltime (+ ltime (swingit interval beatnum swing)))
				(when label (push label labels))))))












