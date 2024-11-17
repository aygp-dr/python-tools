(require 'org)
(find-file "~/.anthropic/sandbox/aygp-dr/python-tools/docs/complete.org")
(org-global-cycle 1)  ; Show only top-level headings
(org-content 1)  ; Show only top-level content
(goto-char (point-min))
;; Give some time to take a screenshot
(sit-for 5)