;; Hide password prompts
(add-hook 'comint-output-filter-functions
          'comint-watch-for-password-prompt)
