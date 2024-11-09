# sudo apt install libclblast-dev

make -j 16 GGML_HIPBLAS=1 GGML_HIP_UMA=1 AMDGPU_TARGETS=gfx1100 CLBlast_DIR=/usr/lib/x86_64-linux-gnu/cmake/CLBlast ROCM_PATH=/opt/rocm 
go build .

# OLLAMA_HOST=0.0.0.0 LD_LIBRARY_PATH=$(pwd)/dist/linux-amd64/lib/ollama ./ollama serve
