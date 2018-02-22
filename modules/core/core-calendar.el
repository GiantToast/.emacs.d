;; Sync iCal to Org-Mode Agenda
(use-package calfw
  :demand
  :ensure t)

(use-package calfw-ical
  :demand
  :ensure t)

(defun toast-calendar ()
  (interactive)
  (cfw:open-calendar-buffer
   :contents-sources
   (list
    (cfw:ical-create-source "gcal" "https://calendar.google.com/calendar/ical/kjones%40cibotechnologies.com/private-d07eb310654e3d3956034bdeaecb5c89/basic.ics" "Green"))))
