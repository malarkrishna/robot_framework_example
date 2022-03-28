ifeq ($(leaf_spine_onboarding),true)
echo '1'
ifeq ($(OR_PODS), testbed1)
echo '2'
SKIP_TAGS_VARS += positive
else ifeq ($(OR_PODS),testbed2)
SKIP_TAGS_VARS += negative
else ifeq ($(OR_PODS),testbed3)
SKIP_TAGS_VARS += combo
else ifeq ($(OR_PODS),testbed4)
SKIP_TAGS_VARS += positive
endif
endif

.PHONY: test-leaf-spine-onboarding
test-leaf-spine-onboarding:
	@echo leaf_spine_onboarding
	@echo leaf_spine_onboarding $(leaf_spine_onboarding)
	@echo OR_PODS $(OR_PODS)
	@echo $(SKIP_TAGS_VARS)
