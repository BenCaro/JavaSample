SOURCES_DIR_IN=src
MANIFEST_IN=Manifest/Manifest.txt

BUILD_DIR_OUT=out/build
COMPILED_CLASSES_OUT=$(BUILD_DIR_OUT)/classes
BIN_DIR_OUT=$(BUILD_DIR_OUT)/bin
JAR_OUT=$(BIN_DIR_OUT)/run.jar

all: run

clean:
	rm -fr $(BUILD_DIR_OUT)

setUpOutDir: clean
	mkdir -p $(COMPILED_CLASSES_OUT)
	mkdir -p $(BIN_DIR_OUT)

compile: setUpOutDir
	javac -sourcepath $(SOURCES_DIR_IN) `find $(SOURCES_DIR_IN) | grep .java` -d $(COMPILED_CLASSES_OUT)

build: setUpOutDir compile
	jar cfm $(JAR_OUT) $(MANIFEST_IN) -C $(COMPILED_CLASSES_OUT) .

run: build
	java -jar $(JAR_OUT)

