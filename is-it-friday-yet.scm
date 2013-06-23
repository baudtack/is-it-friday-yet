(use awful)
(use html-tags)

(define-page (main-page-path)
  (lambda ()
    (<h1> style: "font-size:1750%;text-align:center;" 
          (let ((today (vector-ref (seconds->local-time) 6)))
            (if (eqv? today 5)
                "YES"
                (string-append "No, it's " (day-of-week today) "."))))))
    
(define day-of-week
  (lambda (numeric-day-of-week)
    (list-ref '("Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday") numeric-day-of-week)))
