ifeq ($(leaf_spine_onboarding),true)
ifeq ($(OR_PODS), testbed1)
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
	robot --include $(SKIP_TAGS_VARS) test_suite/
