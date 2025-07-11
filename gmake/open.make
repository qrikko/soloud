# GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_x32
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild prelink

ifeq ($(config),debug_x32)
  RESCOMP = windres
  TARGETDIR = ../../../../lib/Debug-linux-x86_64
  TARGET = $(TARGETDIR)/libopen_x86_d.a
  OBJDIR = ../../../../bin-int/Debug-linux-x86_64/x32/Debug/open
  DEFINES += -DLD_PATH=\"/home/qrikko/Documents/development/open.git/plugins/Debug-linux-x86_64//Debug-linux-x86_64\" -DDEBUG
  INCLUDES += -I../../../core/src -I../.. -I../../cglm/include -I../../glad/include -I../../glfw/include -I../../log.c/src -I../../cgltf -I../../stb -I../../vulkan-headers/include -I../../dmt/src
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g -std=gnu99 -msse4.1 -fPIC
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g -fno-exceptions -fno-rtti -msse4.1 -fPIC
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -lcglm -lm
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -L../../../../lib/Debug-linux-x86_64 -Wl,-rpath=/home/qrikko/Documents/development/open.git/plugins/Debug-linux-x86_64/
  LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),debug_x64)
  RESCOMP = windres
  TARGETDIR = ../../../../lib/Debug-linux-x86_64
  TARGET = $(TARGETDIR)/libopen_x64_d.a
  OBJDIR = ../../../../bin-int/Debug-linux-x86_64/x64/Debug/open
  DEFINES += -DLD_PATH=\"/home/qrikko/Documents/development/open.git/plugins/Debug-linux-x86_64//Debug-linux-x86_64\" -DDEBUG
  INCLUDES += -I../../../core/src -I../.. -I../../cglm/include -I../../glad/include -I../../glfw/include -I../../log.c/src -I../../cgltf -I../../stb -I../../vulkan-headers/include -I../../dmt/src
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g -std=gnu99 -msse4.1 -fPIC
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g -fno-exceptions -fno-rtti -msse4.1 -fPIC
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -lcglm -lm
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -L../../../../lib/Debug-linux-x86_64 -Wl,-rpath=/home/qrikko/Documents/development/open.git/plugins/Debug-linux-x86_64/
  LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),release_x32)
  RESCOMP = windres
  TARGETDIR = ../../../../lib/Release-linux-x86_64
  TARGET = $(TARGETDIR)/libopen_x86.a
  OBJDIR = ../../../../bin-int/Release-linux-x86_64/x32/Release/open
  DEFINES += -DNDEBUG -DLD_PATH=\"/home/qrikko/Documents/development/open.git/plugins/Release-linux-x86_64//Release-linux-x86_64\" -DRELEASE
  INCLUDES += -I../../../core/src -I../.. -I../../cglm/include -I../../glad/include -I../../glfw/include -I../../log.c/src -I../../cgltf -I../../stb -I../../vulkan-headers/include
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -msse2 -std=gnu99 -msse4.1 -fPIC
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -msse2 -fno-exceptions -fno-rtti -msse4.1 -fPIC
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -lcglm -lm
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -s -L../../../../lib/Release-linux-x86_64 -Wl,-rpath=/home/qrikko/Documents/development/open.git/plugins/Release-linux-x86_64/
  LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),release_x64)
  RESCOMP = windres
  TARGETDIR = ../../../../lib/Release-linux-x86_64
  TARGET = $(TARGETDIR)/libopen_x64.a
  OBJDIR = ../../../../bin-int/Release-linux-x86_64/x64/Release/open
  DEFINES += -DNDEBUG -DLD_PATH=\"/home/qrikko/Documents/development/open.git/plugins/Release-linux-x86_64//Release-linux-x86_64\" -DRELEASE
  INCLUDES += -I../../../core/src -I../.. -I../../cglm/include -I../../glad/include -I../../glfw/include -I../../log.c/src -I../../cgltf -I../../stb -I../../vulkan-headers/include
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -std=gnu99 -msse4.1 -fPIC
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -fno-exceptions -fno-rtti -msse4.1 -fPIC
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += -lcglm -lm
  LDDEPS +=
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -s -L../../../../lib/Release-linux-x86_64 -Wl,-rpath=/home/qrikko/Documents/development/open.git/plugins/Release-linux-x86_64/
  LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: prebuild prelink $(TARGET)
	@:

endif

OBJECTS := \
	$(OBJDIR)/cJSON.o \
	$(OBJDIR)/core.o \
	$(OBJDIR)/model.o \
	$(OBJDIR)/pch.o \
	$(OBJDIR)/camera.o \
	$(OBJDIR)/input-description.o \
	$(OBJDIR)/mesh.o \
	$(OBJDIR)/rendertarget.o \
	$(OBJDIR)/shader.o \
	$(OBJDIR)/texture2d.o \
	$(OBJDIR)/settings.o \
	$(OBJDIR)/log.o \

RESOURCES := \

CUSTOMFILES := \

ifeq ($(config),debug_x32)
  OBJECTS += \
	$(OBJDIR)/dmt.o \

endif

ifeq ($(config),debug_x64)
  OBJECTS += \
	$(OBJDIR)/dmt.o \

endif

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

$(TARGET): $(GCH) ${CUSTOMFILES} $(OBJECTS) $(LDDEPS) $(RESOURCES) | $(TARGETDIR)
	@echo Linking open
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(CUSTOMFILES): | $(OBJDIR)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning open
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) $(PCH) | $(OBJDIR)
$(GCH): $(PCH) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
else
$(OBJECTS): | $(OBJDIR)
endif

$(OBJDIR)/cJSON.o: ../../cjson/cJSON.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/core.o: ../../../core/src/core.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/model.o: ../../../core/src/model.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pch.o: ../../../core/src/pch.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/camera.o: ../../../core/src/rendering/camera.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/input-description.o: ../../../core/src/rendering/input-description.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/mesh.o: ../../../core/src/rendering/mesh.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/rendertarget.o: ../../../core/src/rendering/rendertarget.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/shader.o: ../../../core/src/rendering/shaders/shader.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/texture2d.o: ../../../core/src/rendering/texture/texture2d.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/settings.o: ../../../core/src/settings.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/dmt.o: ../../dmt/src/dmt.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/log.o: ../../log.c/src/log.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif