;; TAGS
(prodigy-define-tag
  :name 'pathcmds
  :path "/usr/local/bin")

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
  :name 'cmd-npm
  :hide t
  :tags '(path-cmds)
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
  :name 'env-android
  :hide t
  :env '(("ANDROID_HOME" "/Users/kjones/Library/Android/sdk")))

(prodigy-define-tag
  :name 'env-continuum
  :hide t
  :env '(("CONTINUUM_PORT" "8186")))

(prodigy-define-tag
  :name 'env-sylvester
  :hide t
  :env '(("SYLVESTER_URI" "http://localhost:8184")))

(prodigy-define-tag
  :name 'env-cropnosis
  :hide t
  :env '(("CROPNOSIS_PORT" "8185")))

(prodigy-define-tag
  :name 'env-experimentfactory
  :hide t
  :env '(("EXPERIMENTFACTORY_URI" "http://localhost:8080")))

(prodigy-define-tag
  :name 'env-argo-aws
  :hide t
  :env '(("AWS_PROFILE" "argo-shared-arch")))

(prodigy-define-tag
  :name 'env-cibo
  :hide t
  :env '(("STACK_NAME" "dev")
	 ("CIBO_ENV" "automatron")))
