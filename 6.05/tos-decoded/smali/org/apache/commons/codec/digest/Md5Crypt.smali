.class public Lorg/apache/commons/codec/digest/Md5Crypt;
.super Ljava/lang/Object;
.source "Md5Crypt.java"


# static fields
.field static final APR1_PREFIX:Ljava/lang/String; = "$apr1$"

.field private static final BLOCKSIZE:I = 0x10

.field static final MD5_PREFIX:Ljava/lang/String; = "$1$"

.field private static final ROUNDS:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apr1Crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "keyBytes"

    .prologue
    .line 95
    sget-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "keyBytes"
    .parameter "salt"

    .prologue
    .line 116
    sget-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([B)Ljava/lang/String;
    .locals 2
    .parameter "keyBytes"

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$apr1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "keyBytes"
    .parameter "salt"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    const-string v0, "$apr1$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$apr1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_0
    const-string v0, "$apr1$"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([B)Ljava/lang/String;
    .locals 2
    .parameter "keyBytes"

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "keyBytes"
    .parameter "salt"

    .prologue
    .line 148
    const-string v0, "$1$"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "keyBytes"
    .parameter "salt"
    .parameter "prefix"

    .prologue
    .line 162
    move-object/from16 v0, p0

    array-length v7, v0

    .line 166
    .local v7, keyLen:I
    if-nez p1, :cond_0

    .line 167
    const/16 v13, 0x8

    invoke-static {v13}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v12

    .line 176
    .local v12, saltString:Ljava/lang/String;
    :goto_0
    sget-object v13, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 178
    .local v11, saltBytes:[B
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 183
    .local v1, ctx:Ljava/security/MessageDigest;
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 188
    sget-object v13, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 193
    invoke-virtual {v1, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 198
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v2

    .line 199
    .local v2, ctx1:Ljava/security/MessageDigest;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 200
    invoke-virtual {v2, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 202
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 203
    .local v3, finalb:[B
    move v5, v7

    .line 204
    .local v5, ii:I
    :goto_1
    if-lez v5, :cond_4

    .line 205
    const/4 v14, 0x0

    const/16 v13, 0x10

    if-le v5, v13, :cond_3

    const/16 v13, 0x10

    :goto_2
    invoke-virtual {v1, v3, v14, v13}, Ljava/security/MessageDigest;->update([BII)V

    .line 206
    add-int/lit8 v5, v5, -0x10

    goto :goto_1

    .line 169
    .end local v1           #ctx:Ljava/security/MessageDigest;
    .end local v2           #ctx1:Ljava/security/MessageDigest;
    .end local v3           #finalb:[B
    .end local v5           #ii:I
    .end local v11           #saltBytes:[B
    .end local v12           #saltString:Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "$"

    const-string v15, "\\$"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "([\\.\\/a-zA-Z0-9]{1,8}).*"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 170
    .local v9, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 171
    .local v8, m:Ljava/util/regex/Matcher;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_2

    .line 172
    :cond_1
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid salt value: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 174
    :cond_2
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #saltString:Ljava/lang/String;
    goto/16 :goto_0

    .end local v8           #m:Ljava/util/regex/Matcher;
    .end local v9           #p:Ljava/util/regex/Pattern;
    .restart local v1       #ctx:Ljava/security/MessageDigest;
    .restart local v2       #ctx1:Ljava/security/MessageDigest;
    .restart local v3       #finalb:[B
    .restart local v5       #ii:I
    .restart local v11       #saltBytes:[B
    :cond_3
    move v13, v5

    .line 205
    goto :goto_2

    .line 212
    :cond_4
    const/4 v13, 0x0

    invoke-static {v3, v13}, Ljava/util/Arrays;->fill([BB)V

    .line 217
    move v5, v7

    .line 218
    const/4 v6, 0x0

    .line 219
    .local v6, j:I
    :goto_3
    if-lez v5, :cond_6

    .line 220
    and-int/lit8 v13, v5, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 221
    const/4 v13, 0x0

    aget-byte v13, v3, v13

    invoke-virtual {v1, v13}, Ljava/security/MessageDigest;->update(B)V

    .line 225
    :goto_4
    shr-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 223
    :cond_5
    const/4 v13, 0x0

    aget-byte v13, p0, v13

    invoke-virtual {v1, v13}, Ljava/security/MessageDigest;->update(B)V

    goto :goto_4

    .line 231
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "$"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .local v10, passwd:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 238
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    const/16 v13, 0x3e8

    if-ge v4, v13, :cond_b

    .line 239
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v2

    .line 240
    and-int/lit8 v13, v4, 0x1

    if-eqz v13, :cond_9

    .line 241
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 246
    :goto_6
    rem-int/lit8 v13, v4, 0x3

    if-eqz v13, :cond_7

    .line 247
    invoke-virtual {v2, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 250
    :cond_7
    rem-int/lit8 v13, v4, 0x7

    if-eqz v13, :cond_8

    .line 251
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 254
    :cond_8
    and-int/lit8 v13, v4, 0x1

    if-eqz v13, :cond_a

    .line 255
    const/4 v13, 0x0

    const/16 v14, 0x10

    invoke-virtual {v2, v3, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 259
    :goto_7
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 243
    :cond_9
    const/4 v13, 0x0

    const/16 v14, 0x10

    invoke-virtual {v2, v3, v13, v14}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_6

    .line 257
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_7

    .line 265
    :cond_b
    const/4 v13, 0x0

    aget-byte v13, v3, v13

    const/4 v14, 0x6

    aget-byte v14, v3, v14

    const/16 v15, 0xc

    aget-byte v15, v3, v15

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v10}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 266
    const/4 v13, 0x1

    aget-byte v13, v3, v13

    const/4 v14, 0x7

    aget-byte v14, v3, v14

    const/16 v15, 0xd

    aget-byte v15, v3, v15

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v10}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 267
    const/4 v13, 0x2

    aget-byte v13, v3, v13

    const/16 v14, 0x8

    aget-byte v14, v3, v14

    const/16 v15, 0xe

    aget-byte v15, v3, v15

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v10}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 268
    const/4 v13, 0x3

    aget-byte v13, v3, v13

    const/16 v14, 0x9

    aget-byte v14, v3, v14

    const/16 v15, 0xf

    aget-byte v15, v3, v15

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v10}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 269
    const/4 v13, 0x4

    aget-byte v13, v3, v13

    const/16 v14, 0xa

    aget-byte v14, v3, v14

    const/4 v15, 0x5

    aget-byte v15, v3, v15

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v10}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 270
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xb

    aget-byte v15, v3, v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v10}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 276
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 277
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 278
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Ljava/util/Arrays;->fill([BB)V

    .line 279
    const/4 v13, 0x0

    invoke-static {v11, v13}, Ljava/util/Arrays;->fill([BB)V

    .line 280
    const/4 v13, 0x0

    invoke-static {v3, v13}, Ljava/util/Arrays;->fill([BB)V

    .line 282
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method
