(use-package prodigy
  :ensure t
  :config
  (prodigy-define-service
    :name "Biominer"
    :path "/usr/local/bin"
    :command "sbt"
    :args '("~fastOptJS")
    :cwd "/Users/kjones/projects/work/biominer"
    :tags '(biominer)
    :stop-signal 'sigkill
    :kill-process-buffer-on-stop t)
  (prodigy-define-service
    :name "Biominer Gulp"
    :path "/usr/local/bin"
    :command "gulp"
    :args '("develop")
    :cwd "/Users/kjones/projects/work/biominer"
    :tags '(biominer)
    :stop-signal 'sigkill
    :kill-process-buffer-on-stop t
    :env '(("PATH" "$PATH:/usr/local/bin")))
  (prodigy-define-service
    :name "Biominer Dev Tunnel"
    :command "ssh"
    :args '("argo-dev-db")
    :tags '(biominer)
    :stop-signal 'sigkill
    :kill-process-buffer-on-stop t)
  (prodigy-define-service
    :name "Biominer Services"
    :path "/usr/local/bin"
    :command "sbt"
    :args '("~reStart")
    :cwd "/Users/kjones/projects/work/biominer-services"
    :tags '(biominer)
    :stop-signal 'sigkill
    :kill-process-buffer-on-stop t))
