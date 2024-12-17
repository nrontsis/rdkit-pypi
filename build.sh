rm -rf wheelhouse/*
CIBW_BUILD=cp310-manylinux_x86_64 python3 -m cibuildwheel --platform linux --output-dir wheelhouse --config-file pyproject.toml
CIBW_BUILD=cp311-manylinux_x86_64 python3 -m cibuildwheel --platform linux --output-dir wheelhouse --config-file pyproject.toml
CIBW_BUILD=cp312-manylinux_x86_64 python3 -m cibuildwheel --platform linux --output-dir wheelhouse --config-file pyproject.toml