# Copyright (c) 2020, The APEPEPOW Project
#
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without modification, are
# permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this list of
#    conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice, this list
#    of conditions and the following disclaimer in the documentation and/or other
#    materials provided with the distribution.
#
# 3. Neither the name of the copyright holder nor the names of its contributors may be
#    used to endorse or promote products derived from this software without specific
#    prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
# THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
# THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

include(functions.cmake)

set(APEPEPOW_CRYPTO_LIBRARY "auto" CACHE STRING "Select a crypto library backend")

if (${APEPEPOW_CRYPTO_LIBRARY} STREQUAL "auto")
  apepepow_crypto_autodetect(AVAILABLE BEST)
  if (NOT DEFINED BEST)
    message(FATAL_ERROR "No crypto library available for target platform")
  endif ()
  message("Using ${BEST} crypto backend")
  set(APEPEPOW_CRYPTO_LIBRARY ${BEST})
endif ()

# next line fatal errors if invalid library selected
apepepow_crypto_generate_header(${APEPEPOW_CRYPTO_LIBRARY} "${CMAKE_BINARY_DIR}/include/apepepow/crypto.h")

apepepow_crypto_get_target(${APEPEPOW_CRYPTO_LIBRARY} CRYPTO_TARGET)
add_library(apepepow-crypto-intree ALIAS ${CRYPTO_TARGET})

