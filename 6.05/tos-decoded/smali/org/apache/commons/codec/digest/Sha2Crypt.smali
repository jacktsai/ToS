.class public Lorg/apache/commons/codec/digest/Sha2Crypt;
.super Ljava/lang/Object;
.source "Sha2Crypt.java"


# static fields
.field private static final ROUNDS_DEFAULT:I = 0x1388

.field private static final ROUNDS_MAX:I = 0x3b9ac9ff

.field private static final ROUNDS_MIN:I = 0x3e8

.field private static final ROUNDS_PREFIX:Ljava/lang/String; = "rounds="

.field private static final SALT_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final SHA256_BLOCKSIZE:I = 0x20

.field static final SHA256_PREFIX:Ljava/lang/String; = "$5$"

.field private static final SHA512_BLOCKSIZE:I = 0x40

.field static final SHA512_PREFIX:Ljava/lang/String; = "$6$"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "^\\$([56])\\$(rounds=(\\d+)\\$)?([\\.\\/a-zA-Z0-9]{1,16}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/digest/Sha2Crypt;->SALT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sha256Crypt([B)Ljava/lang/String;
    .locals 1
    .parameter "keyBytes"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha256Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "keyBytes"
    .parameter "salt"

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$5$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    :cond_0
    const-string v0, "$5$"

    const/16 v1, 0x20

    const-string v2, "SHA-256"

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 25
    .parameter "keyBytes"
    .parameter "salt"
    .parameter "saltPrefix"
    .parameter "blocksize"
    .parameter "algorithm"

    .prologue
    .line 128
    move-object/from16 v0, p0

    array-length v11, v0

    .line 131
    .local v11, keyLen:I
    const/16 v14, 0x1388

    .line 132
    .local v14, rounds:I
    const/4 v15, 0x0

    .line 133
    .local v15, roundsCustom:Z
    if-nez p1, :cond_0

    .line 134
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "Salt must not be null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 137
    :cond_0
    sget-object v21, Lorg/apache/commons/codec/digest/Sha2Crypt;->SALT_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 138
    .local v12, m:Ljava/util/regex/Matcher;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-nez v21, :cond_2

    .line 139
    :cond_1
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid salt value: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 141
    :cond_2
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 142
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 143
    const/16 v21, 0x3e8

    const v22, 0x3b9ac9ff

    move/from16 v0, v22

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 144
    const/4 v15, 0x1

    .line 146
    :cond_3
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    .line 147
    .local v19, saltString:Ljava/lang/String;
    sget-object v21, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    .line 148
    .local v17, saltBytes:[B
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    .line 152
    .local v18, saltLen:I
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 158
    .local v9, ctx:Ljava/security/MessageDigest;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 173
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 180
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 186
    .local v4, altCtx:Ljava/security/MessageDigest;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 192
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 198
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 204
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 214
    .local v5, altResult:[B
    move-object/from16 v0, p0

    array-length v7, v0

    .line 215
    .local v7, cnt:I
    :goto_0
    move/from16 v0, p3

    if-le v7, v0, :cond_4

    .line 216
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v9, v5, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 217
    sub-int v7, v7, p3

    goto :goto_0

    .line 222
    :cond_4
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v5, v0, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 238
    move-object/from16 v0, p0

    array-length v7, v0

    .line 239
    :goto_1
    if-lez v7, :cond_6

    .line 240
    and-int/lit8 v21, v7, 0x1

    if-eqz v21, :cond_5

    .line 241
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v9, v5, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 245
    :goto_2
    shr-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 243
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_2

    .line 252
    :cond_6
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 258
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 267
    const/4 v10, 0x1

    .local v10, i:I
    :goto_3
    if-gt v10, v11, :cond_7

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 267
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 275
    :cond_7
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v20

    .line 287
    .local v20, tempResult:[B
    new-array v13, v11, [B

    .line 288
    .local v13, pBytes:[B
    const/4 v8, 0x0

    .line 289
    .local v8, cp:I
    :goto_4
    sub-int v21, v11, p3

    move/from16 v0, v21

    if-ge v8, v0, :cond_8

    .line 290
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, p3

    invoke-static {v0, v1, v13, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    add-int v8, v8, p3

    goto :goto_4

    .line 293
    :cond_8
    const/16 v21, 0x0

    sub-int v22, v11, v8

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v13, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 308
    const/4 v10, 0x1

    :goto_5
    const/16 v21, 0x0

    aget-byte v21, v5, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    if-gt v10, v0, :cond_9

    .line 309
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 308
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 316
    :cond_9
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v20

    .line 329
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 330
    .local v16, sBytes:[B
    const/4 v8, 0x0

    .line 331
    :goto_6
    sub-int v21, v18, p3

    move/from16 v0, v21

    if-ge v8, v0, :cond_a

    .line 332
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    add-int v8, v8, p3

    goto :goto_6

    .line 335
    :cond_a
    const/16 v21, 0x0

    sub-int v22, v18, v8

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    const/4 v10, 0x0

    :goto_7
    add-int/lit8 v21, v14, -0x1

    move/from16 v0, v21

    if-gt v10, v0, :cond_f

    .line 353
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 360
    and-int/lit8 v21, v10, 0x1

    if-eqz v21, :cond_d

    .line 361
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v13, v0, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 370
    :goto_8
    rem-int/lit8 v21, v10, 0x3

    if-eqz v21, :cond_b

    .line 371
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 378
    :cond_b
    rem-int/lit8 v21, v10, 0x7

    if-eqz v21, :cond_c

    .line 379
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v13, v0, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 387
    :cond_c
    and-int/lit8 v21, v10, 0x1

    if-eqz v21, :cond_e

    .line 388
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v9, v5, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 397
    :goto_9
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 348
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 363
    :cond_d
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v9, v5, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_8

    .line 390
    :cond_e
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v13, v0, v11}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_9

    .line 415
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .local v6, buffer:Ljava/lang/StringBuilder;
    if-eqz v15, :cond_10

    .line 417
    const-string v21, "rounds="

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    const-string v21, "$"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_10
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v21, "$"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const/16 v21, 0x20

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 449
    const/16 v21, 0x0

    aget-byte v21, v5, v21

    const/16 v22, 0xa

    aget-byte v22, v5, v22

    const/16 v23, 0x14

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 450
    const/16 v21, 0x15

    aget-byte v21, v5, v21

    const/16 v22, 0x1

    aget-byte v22, v5, v22

    const/16 v23, 0xb

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 451
    const/16 v21, 0xc

    aget-byte v21, v5, v21

    const/16 v22, 0x16

    aget-byte v22, v5, v22

    const/16 v23, 0x2

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 452
    const/16 v21, 0x3

    aget-byte v21, v5, v21

    const/16 v22, 0xd

    aget-byte v22, v5, v22

    const/16 v23, 0x17

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 453
    const/16 v21, 0x18

    aget-byte v21, v5, v21

    const/16 v22, 0x4

    aget-byte v22, v5, v22

    const/16 v23, 0xe

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 454
    const/16 v21, 0xf

    aget-byte v21, v5, v21

    const/16 v22, 0x19

    aget-byte v22, v5, v22

    const/16 v23, 0x5

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 455
    const/16 v21, 0x6

    aget-byte v21, v5, v21

    const/16 v22, 0x10

    aget-byte v22, v5, v22

    const/16 v23, 0x1a

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 456
    const/16 v21, 0x1b

    aget-byte v21, v5, v21

    const/16 v22, 0x7

    aget-byte v22, v5, v22

    const/16 v23, 0x11

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 457
    const/16 v21, 0x12

    aget-byte v21, v5, v21

    const/16 v22, 0x1c

    aget-byte v22, v5, v22

    const/16 v23, 0x8

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 458
    const/16 v21, 0x9

    aget-byte v21, v5, v21

    const/16 v22, 0x13

    aget-byte v22, v5, v22

    const/16 v23, 0x1d

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 459
    const/16 v21, 0x0

    const/16 v22, 0x1f

    aget-byte v22, v5, v22

    const/16 v23, 0x1e

    aget-byte v23, v5, v23

    const/16 v24, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 490
    :goto_a
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([BB)V

    .line 491
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 492
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 493
    invoke-virtual {v9}, Ljava/security/MessageDigest;->reset()V

    .line 494
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 495
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 496
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 498
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    return-object v21

    .line 461
    :cond_11
    const/16 v21, 0x0

    aget-byte v21, v5, v21

    const/16 v22, 0x15

    aget-byte v22, v5, v22

    const/16 v23, 0x2a

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 462
    const/16 v21, 0x16

    aget-byte v21, v5, v21

    const/16 v22, 0x2b

    aget-byte v22, v5, v22

    const/16 v23, 0x1

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 463
    const/16 v21, 0x2c

    aget-byte v21, v5, v21

    const/16 v22, 0x2

    aget-byte v22, v5, v22

    const/16 v23, 0x17

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 464
    const/16 v21, 0x3

    aget-byte v21, v5, v21

    const/16 v22, 0x18

    aget-byte v22, v5, v22

    const/16 v23, 0x2d

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 465
    const/16 v21, 0x19

    aget-byte v21, v5, v21

    const/16 v22, 0x2e

    aget-byte v22, v5, v22

    const/16 v23, 0x4

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 466
    const/16 v21, 0x2f

    aget-byte v21, v5, v21

    const/16 v22, 0x5

    aget-byte v22, v5, v22

    const/16 v23, 0x1a

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 467
    const/16 v21, 0x6

    aget-byte v21, v5, v21

    const/16 v22, 0x1b

    aget-byte v22, v5, v22

    const/16 v23, 0x30

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 468
    const/16 v21, 0x1c

    aget-byte v21, v5, v21

    const/16 v22, 0x31

    aget-byte v22, v5, v22

    const/16 v23, 0x7

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 469
    const/16 v21, 0x32

    aget-byte v21, v5, v21

    const/16 v22, 0x8

    aget-byte v22, v5, v22

    const/16 v23, 0x1d

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 470
    const/16 v21, 0x9

    aget-byte v21, v5, v21

    const/16 v22, 0x1e

    aget-byte v22, v5, v22

    const/16 v23, 0x33

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 471
    const/16 v21, 0x1f

    aget-byte v21, v5, v21

    const/16 v22, 0x34

    aget-byte v22, v5, v22

    const/16 v23, 0xa

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 472
    const/16 v21, 0x35

    aget-byte v21, v5, v21

    const/16 v22, 0xb

    aget-byte v22, v5, v22

    const/16 v23, 0x20

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 473
    const/16 v21, 0xc

    aget-byte v21, v5, v21

    const/16 v22, 0x21

    aget-byte v22, v5, v22

    const/16 v23, 0x36

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 474
    const/16 v21, 0x22

    aget-byte v21, v5, v21

    const/16 v22, 0x37

    aget-byte v22, v5, v22

    const/16 v23, 0xd

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 475
    const/16 v21, 0x38

    aget-byte v21, v5, v21

    const/16 v22, 0xe

    aget-byte v22, v5, v22

    const/16 v23, 0x23

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 476
    const/16 v21, 0xf

    aget-byte v21, v5, v21

    const/16 v22, 0x24

    aget-byte v22, v5, v22

    const/16 v23, 0x39

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 477
    const/16 v21, 0x25

    aget-byte v21, v5, v21

    const/16 v22, 0x3a

    aget-byte v22, v5, v22

    const/16 v23, 0x10

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 478
    const/16 v21, 0x3b

    aget-byte v21, v5, v21

    const/16 v22, 0x11

    aget-byte v22, v5, v22

    const/16 v23, 0x26

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 479
    const/16 v21, 0x12

    aget-byte v21, v5, v21

    const/16 v22, 0x27

    aget-byte v22, v5, v22

    const/16 v23, 0x3c

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 480
    const/16 v21, 0x28

    aget-byte v21, v5, v21

    const/16 v22, 0x3d

    aget-byte v22, v5, v22

    const/16 v23, 0x13

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 481
    const/16 v21, 0x3e

    aget-byte v21, v5, v21

    const/16 v22, 0x14

    aget-byte v22, v5, v22

    const/16 v23, 0x29

    aget-byte v23, v5, v23

    const/16 v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 482
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3f

    aget-byte v23, v5, v23

    const/16 v24, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v6}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    goto/16 :goto_a
.end method

.method public static sha512Crypt([B)Ljava/lang/String;
    .locals 1
    .parameter "keyBytes"

    .prologue
    .line 510
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha512Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "keyBytes"
    .parameter "salt"

    .prologue
    .line 524
    if-nez p1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$6$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 527
    :cond_0
    const-string v0, "$6$"

    const/16 v1, 0x40

    const-string v2, "SHA-512"

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
