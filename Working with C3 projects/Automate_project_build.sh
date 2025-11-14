# 1. create a new C3 project (alrady documented)
c3c init iso
cd iso

# 2. see the structure yourself (in terminal)
tree -a

# 3. compilation processor/runner command execution
c3c run iso

# 4. user-made library (lib)
mkdir -p lib/iso_lib1.c3l
# echo '{"provides": "iso_lib1",
#        "targets": {
#            "linux-x64": {}
#        }
#       }' > lib/iso_lib1.c3l/manifest.json

# 5. example resource
mkdir -p resources/data
echo "config=value" > resources/config.txt

# 6. modify src
# nano src/main.c3
# who uses nano?

# 7. build executable for x64 linux target archiectures
c3c build --target linux-x64

# 8. confirm that it was built
ls -la build/
file build/iso # ELF 64-bit LSB executable...

# 9. run the executable
#./build/iso
c3c run iso
