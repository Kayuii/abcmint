hunter_config(CURL VERSION ${HUNTER_CURL_VERSION} CMAKE_ARGS HTTP_ONLY=ON CMAKE_USE_OPENSSL=OFF CMAKE_USE_LIBSSH2=OFF CURL_CA_PATH=none)
hunter_config(Boost VERSION 1.66.0)

hunter_config(OpenSSL VERSION 1.1.1g)

# hunter_config(leveldb VERSION 1.1)

# hunter_config(OpenSSL VERSION 1.1.0g)
# hunter_config(miniupnp
#     URL "https://github.com/miniupnp/miniupnp/archive/refs/tags/miniupnpc_2_1.tar.gz"
#     SHA1 "4259ace6b77e4f70fdbccb279b9a43dc83be2d20"
# )
