;; TAGS
(prodigy-define-tag
  :name 'path-cmds
  :path "/usr/local/bin")

(prodigy-define-tag
  :name 'path-cmds-nvm
  :path (getenv "NVM_BIN"))

(prodigy-define-tag
  :name 'cmd-kubectl
  :hide t
  :tags '(path-cmds)
  :command "kubectl"
  :args (prodigy-callback (service) (build-kubectl-args (getf service :port-forward))))

(prodigy-define-tag
  :name 'cmd-jake
  :hide t
  :tags '(path-cmds)
  :command "jake"
  :args (prodigy-callback (service) (build-jake-args (getf service :port-forward))))

(prodigy-define-tag
  :name 'cmd-sbt
  :hide t
  :tags '(path-cmds)
  :command "sbt")

(prodigy-define-tag
  :name 'cmd-node
  :hide t
  :tags '(path-cmds)
  :command "node")

(prodigy-define-tag
  :name 'cmd-node-nvm
  :hide t
  :tags '(path-cmds-nvm)
  :command "node")

(prodigy-define-tag
  :name 'cmd-npm
  :hide t
  :tags '(path-cmds)
  :command "npm")

(prodigy-define-tag
  :name 'cmd-npm-nvm
  :hide t
  :tags '(path-cmds-nvm)
  :command "npm")

(prodigy-define-tag
  :name 'cmd-yarn
  :hide t
  :tags '(path-cmds)
  :command "yarn")

(prodigy-define-tag
  :name 'cmd-react-native
  :hide t
  :tags '(path-cmds)
  :command "react-native")

(prodigy-define-tag
  :name 'cmd-docker
  :hide t
  :tags '(path-cmds)
  :command "docker")

(prodigy-define-tag
  :name 'cmd-docker-compose
  :hide t
  :tags '(path-cmds)
  :command "docker-compose")
