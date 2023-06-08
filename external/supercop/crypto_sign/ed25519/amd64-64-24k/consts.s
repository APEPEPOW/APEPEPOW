#ifdef __APPLE__
  #define APEPEPOW_LOCAL_SYMBOL(x) .private_extern x
#else
  #define APEPEPOW_LOCAL_SYMBOL(x) .hidden x
#endif

.data

.globl crypto_sign_ed25519_amd64_64_121666
.globl crypto_sign_ed25519_amd64_64_MU0
.globl crypto_sign_ed25519_amd64_64_MU1
.globl crypto_sign_ed25519_amd64_64_MU2
.globl crypto_sign_ed25519_amd64_64_MU3
.globl crypto_sign_ed25519_amd64_64_MU4
.globl crypto_sign_ed25519_amd64_64_ORDER0
.globl crypto_sign_ed25519_amd64_64_ORDER1
.globl crypto_sign_ed25519_amd64_64_ORDER2
.globl crypto_sign_ed25519_amd64_64_ORDER3
.globl crypto_sign_ed25519_amd64_64_EC2D0
.globl crypto_sign_ed25519_amd64_64_EC2D1
.globl crypto_sign_ed25519_amd64_64_EC2D2
.globl crypto_sign_ed25519_amd64_64_EC2D3
.globl crypto_sign_ed25519_amd64_64_38

APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_121666)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_MU0)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_MU1)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_MU2)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_MU3)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_MU4)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_ORDER0)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_ORDER1)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_ORDER2)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_ORDER3)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_EC2D0)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_EC2D1)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_EC2D2)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_EC2D3)
APEPEPOW_LOCAL_SYMBOL(crypto_sign_ed25519_amd64_64_38)

.p2align 4

crypto_sign_ed25519_amd64_64_121666:     .quad 121666

crypto_sign_ed25519_amd64_64_MU0:         .quad 0xED9CE5A30A2C131B
crypto_sign_ed25519_amd64_64_MU1:         .quad 0x2106215D086329A7
crypto_sign_ed25519_amd64_64_MU2:         .quad 0xFFFFFFFFFFFFFFEB
crypto_sign_ed25519_amd64_64_MU3:         .quad 0xFFFFFFFFFFFFFFFF
crypto_sign_ed25519_amd64_64_MU4:         .quad 0x000000000000000F

crypto_sign_ed25519_amd64_64_ORDER0:      .quad 0x5812631A5CF5D3ED
crypto_sign_ed25519_amd64_64_ORDER1:      .quad 0x14DEF9DEA2F79CD6
crypto_sign_ed25519_amd64_64_ORDER2:      .quad 0x0000000000000000
crypto_sign_ed25519_amd64_64_ORDER3:      .quad 0x1000000000000000

crypto_sign_ed25519_amd64_64_EC2D0:       .quad 0xEBD69B9426B2F146
crypto_sign_ed25519_amd64_64_EC2D1:       .quad 0x00E0149A8283B156
crypto_sign_ed25519_amd64_64_EC2D2:       .quad 0x198E80F2EEF3D130
crypto_sign_ed25519_amd64_64_EC2D3:       .quad 0xA406D9DC56DFFCE7

crypto_sign_ed25519_amd64_64_38:         .quad 38
