AWS_PROFILE=badwolf-labs
init:
	$(call tf,init)

plan: init ;$(call tf,plan)

apply: plan ;$(call tf,apply -auto-approve)

destroy: plan ;$(call tf, destroy -auto-approve)

refresh: ;$(call tf,refresh)

state: ;$(call tf,state list)

fmt:
	$(call tf,fmt)
	$(call tf,fmt ../)

define tf
	export AWS_PROFILE=$(AWS_PROFILE) && \
	terraform $1
endef