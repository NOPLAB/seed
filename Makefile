PROJECT_NAME=seed
PROJECT_ROOT=.
OS_DIR=$(PROJECT_ROOT)/os
BOOT_LOADER_DIR=$(PROJECT_ROOT)/bootloader

$(PROJECT_NAME):
	cd $(OS_DIR) && cargo build
	cd $(BOOT_LOADER_DIR) && cargo build

run: $(PROJECT_NAME)
	
clean:
	rm -rf $(PROJECT_ROOT)/target
