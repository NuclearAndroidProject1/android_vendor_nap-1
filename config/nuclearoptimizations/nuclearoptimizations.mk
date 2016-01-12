export USE_HOST_LEX :=
export USE_ORACLE_JAVA := 1
export USE_CCACHE := 1
export USE_SYSTEM_CCACHE := 1
export DISABLE_LLVM_DEVICE_BUILDS : = true
export DISABLE_OPTIMIZATIONS := false
ifneq ($(DISABLE_OPTIMIZATIONS),true)
export USE_O3_OPTIMIZATIONS := true
export ENABLE_EXTRAGCC := false
export GRAPHITE_OPTS := false
export FFAST_MATH := true
export ENABLE_IPA_ANALYSER := true
export TARGET_USE_PIPE := true
export KRAIT_TUNINGS := true
export ENABLE_PTHREAD := true
export ENABLE_GOMP := false
export ENABLE_SANITIZE := true
export STRICT_ALIASING := false
export DONT_ERROROUT := true
export ENABLE_ARM_MODE := true
export ENABLE_GOLD_LINKER := true
endif
#export TARGET_NDK_GCC_VERSION := 5.3
export TARGET_GCC_VERSION_EXP := 5.3
export TARGET_GCC_VERSION := 5.3
export TARGET_GCC_VERSION_KERNEL := 5.3
export KBUILD_BUILD_USER := Lozo
export KBUILD_BUILD_HOST := teamnuclear