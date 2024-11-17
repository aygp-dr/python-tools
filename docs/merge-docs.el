(defun merge-docs ()
  "Merge all documentation files into a single org file"
  (interactive)
  (let ((output-file "~/.anthropic/sandbox/aygp-dr/python-tools/docs/complete.org")
        (source-files '("~/.anthropic/sandbox/aygp-dr/python-tools/dev/formatting.org"
                       "~/.anthropic/sandbox/aygp-dr/python-tools/dev/testing.org"
                       "~/.anthropic/sandbox/aygp-dr/python-tools/data/core.org"
                       "~/.anthropic/sandbox/aygp-dr/python-tools/data/ml.org"
                       "~/.anthropic/sandbox/aygp-dr/python-tools/web/apis.org"
                       "~/.anthropic/sandbox/aygp-dr/python-tools/web/clients.org"
                       "~/.anthropic/sandbox/aygp-dr/python-tools/llm/core.org"
                       "~/.anthropic/sandbox/aygp-dr/python-tools/llm/utils.org"
                       "~/.anthropic/sandbox/aygp-dr/python-tools/utils/config.org"
                       "~/.anthropic/sandbox/aygp-dr/python-tools/utils/data.org")))
    (with-temp-file output-file
      (insert "#+TITLE: Complete Python Tools Documentation\n")
      (insert "#+AUTHOR: Generated Setup\n")
      (insert "#+DATE: 2024-11-16\n\n")
      (dolist (file source-files)
        (insert-file-contents file)
        (goto-char (point-max))
        (insert "\n\n")))))

(merge-docs)