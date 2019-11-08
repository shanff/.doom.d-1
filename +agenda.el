;;; ~/.doom.d/agenda.el -*- lexical-binding: t; -*-

(after! org-agenda (setq org-agenda-custom-commands
                         '(("h" "Primary Tasks"
                            ((todo "TODO|NEXT|DOING"
                                   ((org-agenda-overriding-header "Next up or TODO Tasks")
                                    (org-agenda-files '("~/.gtd/thelist.org" "~/.gtd/projects.org"))
                                    (org-agenda-prefix-format " %(my-agenda-prefix) ")
                                    (org-tags-match-list-sublevels 'indented)
                                    (org-super-agenda-groups
                                     '((:auto-parent t)))))
                             (todo ""
                                   ((org-agenda-overriding-header "Priority Items")
                                    (org-agenda-files '("~/.gtd/thelist.org" "~/.gtd/projects.org"))
                                    (org-super-agenda-groups
                                     '((:name "High Priority"
                                              :priority "A"
                                              :order 1)
                                       (:name "Tasks with Deadlines"
                                              :deadline t
                                              :order 2)))))))
                           ("X" "Test"
                            ((todo ""
                                   ((org-super-agenda-groups
                                     '((:name "Mediawiki"
                                              :regexp "Mediawiki"
                                              :order 1)
                                       (:name "Projects"
                                              :regexp "Projects"
                                              :order 2)
                                       (:name "Habits"
                                              :regexp "Habits"
                                              :order 3)))))))
                           ("r" "References"
                            ((todo ""
                                   ((org-agenda-prefix-format " %(my-agenda-prefix) ")
                                    (org-agenda-files '("~/.gtd/reference.org"))
                                    (org-agenda-overriding-header "TODO Items for References")
                                    (org-tags-match-list-sublevels 'indented)
                                    (org-super-agenda-groups
                                     '((:auto-parent t)))))))
                           ("n" "Notes"
                            ((todo ""
                                   ((org-agenda-prefix-format " %(my-agenda-prefix) ")
                                    (org-agenda-files (list "~/.notes" "~/.notes/personal"))
                                    (org-agenda-overriding-header "TODO Items in Notes")
                                    (org-tags-match-list-sublevels 'indented)
                                    (org-super-agenda-groups
                                     '((:auto-category t)))))))
                           ("i" "Inbox"
                            ((todo ""
                                   ((org-agenda-files '("~/.gtd/inbox.org"))
                                    (org-agenda-overriding-header "What's in my inbox by date created")
                                    (org-super-agenda-groups
                                     '((:name none
                                              :auto-ts t)))))))
                           ("x" "Get to someday"
                            ((todo ""
                                   ((org-agenda-overriding-header "Things I need to get to someday")
                                    (org-agenda-files '("~/.gtd/someday.org"))
                                    (org-super-agenda-groups
                                     '((:name none
                                              :auto-parent t)
                                       (:discard (:anything t)))))))))))
