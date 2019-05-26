;; Helper Functions
(defun build-jake-args (args)
  "Build jake arguments from custom key"
  (list "port-forward"
	"-s"
	(getf args :stack)
	(getf args :cf-output)
	(getf args :port-name)))

(defun build-kubectl-args (args)
  "Build kubectl arguments from custom key"
  (list "port-forward"
	"-n"
	(getf args :namespace)
	(getf args :service)
	(concat (getf args :local-port)
		":"
		(getf args :remote-port))))
