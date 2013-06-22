(use awful)
(use html-tags)

(enable-sxml #t)

(define-page (main-page-path)
  (lambda ()
    (<h1> style: "font-size:1750%;text-align:center;" 
          (let ((today (vector-ref (seconds->local-time) 6)))
            (if (eq? today 5)
                "YES"
                (string-append "No, it's " (day-of-week today) "."))))))
    
(define day-of-week
  (lambda (numeric-day-of-week)
    (cond ((eq? numeric-day-of-week 0) "Sunday")
          ((eq? numeric-day-of-week 1) "Monday")
          ((eq? numeric-day-of-week 2) "Tuesday")
          ((eq? numeric-day-of-week 3) "Wednesday")
          ((eq? numeric-day-of-week 4) "Thursday")
          ((eq? numeric-day-of-week 5) "Friday")
          ((eq? numeric-day-of-week 6) "Saturday"))))
