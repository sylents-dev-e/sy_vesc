(define itcnt 0)

(loopwhile t
   (progn
     (define itcnt (+ itcnt 1))
     (canset-pos 124 (get-encoder))
     (define canc (canget-current-dir 124))
     (set-servo (- 0.5 (* 0.02 canc)))
     (set-brake (* 0.5 canc))
     (timeout-reset)
     (sleep 0.002)
))
