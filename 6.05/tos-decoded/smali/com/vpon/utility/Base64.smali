.class public final Lcom/vpon/utility/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 75
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/vpon/utility/Base64;->a:[C

    .line 76
    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/vpon/utility/Base64;->b:[I

    .line 78
    sget-object v0, Lcom/vpon/utility/Base64;->b:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 79
    sget-object v0, Lcom/vpon/utility/Base64;->a:[C

    array-length v2, v0

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 81
    sget-object v0, Lcom/vpon/utility/Base64;->b:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    .line 73
    return-void

    .line 80
    :cond_0
    sget-object v3, Lcom/vpon/utility/Base64;->b:[I

    sget-object v4, Lcom/vpon/utility/Base64;->a:[C

    aget-char v4, v4, v0

    aput v0, v3, v4

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 9
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 465
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 466
    :goto_0
    if-nez v2, :cond_1

    .line 467
    new-array v0, v3, [B

    .line 508
    :goto_1
    return-object v0

    :cond_0
    move v2, v3

    .line 465
    goto :goto_0

    :cond_1
    move v1, v3

    move v0, v3

    .line 472
    :goto_2
    if-lt v1, v2, :cond_2

    .line 477
    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 478
    const/4 v0, 0x0

    goto :goto_1

    .line 473
    :cond_2
    sget-object v4, Lcom/vpon/utility/Base64;->b:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v4, v4, v5

    if-gez v4, :cond_3

    .line 474
    add-int/lit8 v0, v0, 0x1

    .line 472
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    move v4, v3

    .line 482
    :cond_5
    :goto_3
    const/4 v5, 0x1

    if-le v1, v5, :cond_6

    sget-object v5, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v5, v5, v6

    if-lez v5, :cond_7

    .line 486
    :cond_6
    sub-int v0, v2, v0

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v4

    .line 488
    new-array v2, v7, [B

    move v6, v3

    move v0, v3

    .line 490
    :goto_4
    if-lt v6, v7, :cond_8

    move-object v0, v2

    .line 508
    goto :goto_1

    .line 483
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_5

    .line 484
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v1, v3

    move v4, v0

    move v0, v3

    .line 493
    :goto_5
    const/4 v5, 0x4

    if-lt v0, v5, :cond_a

    .line 501
    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 502
    if-ge v0, v7, :cond_9

    .line 503
    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    .line 504
    if-ge v5, v7, :cond_c

    .line 505
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, v5

    :cond_9
    move v6, v0

    move v0, v4

    goto :goto_4

    .line 494
    :cond_a
    sget-object v8, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v4, v8, v4

    .line 495
    if-ltz v4, :cond_b

    .line 496
    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v4, v8

    or-int/2addr v1, v4

    .line 493
    :goto_6
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_5

    .line 498
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_c
    move v6, v5

    move v0, v4

    goto :goto_4
.end method

.method public static final decode([B)[B
    .locals 9
    .parameter "sArr"

    .prologue
    const/4 v3, 0x0

    .line 326
    array-length v2, p0

    move v1, v3

    move v0, v3

    .line 331
    :goto_0
    if-lt v1, v2, :cond_0

    .line 336
    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 337
    const/4 v0, 0x0

    .line 368
    :goto_1
    return-object v0

    .line 332
    :cond_0
    sget-object v4, Lcom/vpon/utility/Base64;->b:[I

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1

    .line 333
    add-int/lit8 v0, v0, 0x1

    .line 331
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    move v4, v3

    .line 340
    :cond_3
    :goto_2
    const/4 v5, 0x1

    if-le v1, v5, :cond_4

    sget-object v5, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v1, v1, -0x1

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    if-lez v5, :cond_5

    .line 344
    :cond_4
    sub-int v0, v2, v0

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v4

    .line 346
    new-array v2, v7, [B

    move v6, v3

    move v0, v3

    .line 348
    :goto_3
    if-lt v6, v7, :cond_6

    move-object v0, v2

    .line 368
    goto :goto_1

    .line 341
    :cond_5
    aget-byte v5, p0, v1

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_3

    .line 342
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move v1, v3

    move v4, v0

    move v0, v3

    .line 351
    :goto_4
    const/4 v5, 0x4

    if-lt v0, v5, :cond_8

    .line 360
    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 361
    if-ge v0, v7, :cond_7

    .line 362
    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    .line 363
    if-ge v5, v7, :cond_a

    .line 364
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, v5

    :cond_7
    move v6, v0

    move v0, v4

    goto :goto_3

    .line 352
    :cond_8
    sget-object v8, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v8, v4

    .line 353
    if-ltz v4, :cond_9

    .line 354
    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v4, v8

    or-int/2addr v1, v4

    .line 351
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_4

    .line 356
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_a
    move v6, v5

    move v0, v4

    goto :goto_3
.end method

.method public static final decode([C)[B
    .locals 9
    .parameter "sArr"

    .prologue
    const/4 v3, 0x0

    .line 150
    if-eqz p0, :cond_0

    array-length v2, p0

    .line 151
    :goto_0
    if-nez v2, :cond_1

    .line 152
    new-array v0, v3, [B

    .line 192
    :goto_1
    return-object v0

    :cond_0
    move v2, v3

    .line 150
    goto :goto_0

    :cond_1
    move v1, v3

    move v0, v3

    .line 157
    :goto_2
    if-lt v1, v2, :cond_2

    .line 162
    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 163
    const/4 v0, 0x0

    goto :goto_1

    .line 158
    :cond_2
    sget-object v4, Lcom/vpon/utility/Base64;->b:[I

    aget-char v5, p0, v1

    aget v4, v4, v5

    if-gez v4, :cond_3

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 157
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    move v4, v3

    .line 166
    :cond_5
    :goto_3
    const/4 v5, 0x1

    if-le v1, v5, :cond_6

    sget-object v5, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v1, v1, -0x1

    aget-char v6, p0, v1

    aget v5, v5, v6

    if-lez v5, :cond_7

    .line 170
    :cond_6
    sub-int v0, v2, v0

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v4

    .line 172
    new-array v2, v7, [B

    move v6, v3

    move v0, v3

    .line 174
    :goto_4
    if-lt v6, v7, :cond_8

    move-object v0, v2

    .line 192
    goto :goto_1

    .line 167
    :cond_7
    aget-char v5, p0, v1

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_5

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v1, v3

    move v4, v0

    move v0, v3

    .line 177
    :goto_5
    const/4 v5, 0x4

    if-lt v0, v5, :cond_a

    .line 185
    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    .line 186
    if-ge v0, v7, :cond_9

    .line 187
    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    .line 188
    if-ge v5, v7, :cond_c

    .line 189
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, v5

    :cond_9
    move v6, v0

    move v0, v4

    goto :goto_4

    .line 178
    :cond_a
    sget-object v8, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v5, v4, 0x1

    aget-char v4, p0, v4

    aget v4, v8, v4

    .line 179
    if-ltz v4, :cond_b

    .line 180
    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v4, v8

    or-int/2addr v1, v4

    .line 177
    :goto_6
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_5

    .line 182
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_c
    move v6, v5

    move v0, v4

    goto :goto_4
.end method

.method public static final decodeFast(Ljava/lang/String;)[B
    .locals 14
    .parameter "s"

    .prologue
    const/16 v9, 0x4c

    const/16 v6, 0x3d

    const/4 v1, 0x0

    .line 523
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 524
    if-nez v2, :cond_0

    .line 525
    new-array v0, v1, [B

    .line 573
    :goto_0
    return-object v0

    .line 527
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v4, v1

    .line 530
    :goto_1
    if-ge v4, v0, :cond_e

    sget-object v3, Lcom/vpon/utility/Base64;->b:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    if-ltz v3, :cond_3

    move v8, v0

    .line 534
    :goto_2
    if-lez v8, :cond_1

    sget-object v0, Lcom/vpon/utility/Base64;->b:[I

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget v0, v0, v3

    if-ltz v0, :cond_4

    .line 538
    :cond_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_6

    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_5

    const/4 v0, 0x2

    move v7, v0

    .line 539
    :goto_3
    sub-int v0, v8, v4

    add-int/lit8 v3, v0, 0x1

    .line 540
    if-le v2, v9, :cond_8

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    div-int/lit8 v0, v3, 0x4e

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    .line 542
    :goto_5
    sub-int v2, v3, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v9, v2, v7

    .line 543
    new-array v2, v9, [B

    .line 547
    div-int/lit8 v3, v9, 0x3

    mul-int/lit8 v10, v3, 0x3

    move v5, v1

    move v3, v1

    :goto_6
    if-lt v3, v10, :cond_9

    .line 563
    if-ge v3, v9, :cond_2

    move v0, v4

    move v4, v1

    .line 566
    :goto_7
    sub-int v5, v8, v7

    if-le v0, v5, :cond_a

    .line 569
    const/16 v0, 0x10

    move v1, v3

    :goto_8
    if-lt v1, v9, :cond_b

    :cond_2
    move-object v0, v2

    .line 573
    goto :goto_0

    .line 531
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 535
    :cond_4
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_2

    .line 538
    :cond_5
    const/4 v0, 0x1

    move v7, v0

    goto :goto_3

    :cond_6
    move v7, v1

    goto :goto_3

    :cond_7
    move v0, v1

    .line 540
    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_5

    .line 549
    :cond_9
    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v4, v6, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v6, v6, v11

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v4, v6

    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v6, v6, v12

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    sget-object v12, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v6, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v11, v4

    .line 552
    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v12, v11, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    .line 553
    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v12, v11, 0x8

    int-to-byte v12, v12

    aput-byte v12, v2, v4

    .line 554
    add-int/lit8 v4, v3, 0x1

    int-to-byte v11, v11

    aput-byte v11, v2, v3

    .line 557
    if-lez v0, :cond_d

    add-int/lit8 v3, v5, 0x1

    const/16 v5, 0x13

    if-ne v3, v5, :cond_c

    .line 558
    add-int/lit8 v3, v6, 0x2

    move v5, v1

    move v13, v4

    move v4, v3

    move v3, v13

    .line 559
    goto :goto_6

    .line 567
    :cond_a
    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget v0, v6, v0

    mul-int/lit8 v6, v1, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr v0, v6

    or-int/2addr v0, v4

    .line 566
    add-int/lit8 v1, v1, 0x1

    move v4, v0

    move v0, v5

    goto/16 :goto_7

    .line 570
    :cond_b
    add-int/lit8 v3, v1, 0x1

    shr-int v5, v4, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 569
    add-int/lit8 v0, v0, -0x8

    move v1, v3

    goto/16 :goto_8

    :cond_c
    move v5, v3

    move v3, v4

    move v4, v6

    goto/16 :goto_6

    :cond_d
    move v3, v4

    move v4, v6

    goto/16 :goto_6

    :cond_e
    move v8, v0

    goto/16 :goto_2
.end method

.method public static final decodeFast([B)[B
    .locals 14
    .parameter "sArr"

    .prologue
    const/16 v9, 0x4c

    const/16 v6, 0x3d

    const/4 v1, 0x0

    .line 384
    array-length v2, p0

    .line 385
    if-nez v2, :cond_0

    .line 386
    new-array v0, v1, [B

    .line 434
    :goto_0
    return-object v0

    .line 388
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v4, v1

    .line 391
    :goto_1
    if-ge v4, v0, :cond_e

    sget-object v3, Lcom/vpon/utility/Base64;->b:[I

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    if-ltz v3, :cond_3

    move v8, v0

    .line 395
    :goto_2
    if-lez v8, :cond_1

    sget-object v0, Lcom/vpon/utility/Base64;->b:[I

    aget-byte v3, p0, v8

    and-int/lit16 v3, v3, 0xff

    aget v0, v0, v3

    if-ltz v0, :cond_4

    .line 399
    :cond_1
    aget-byte v0, p0, v8

    if-ne v0, v6, :cond_6

    add-int/lit8 v0, v8, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v6, :cond_5

    const/4 v0, 0x2

    move v7, v0

    .line 400
    :goto_3
    sub-int v0, v8, v4

    add-int/lit8 v3, v0, 0x1

    .line 401
    if-le v2, v9, :cond_8

    aget-byte v0, p0, v9

    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    div-int/lit8 v0, v3, 0x4e

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    .line 403
    :goto_5
    sub-int v2, v3, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v9, v2, v7

    .line 404
    new-array v2, v9, [B

    .line 408
    div-int/lit8 v3, v9, 0x3

    mul-int/lit8 v10, v3, 0x3

    move v5, v1

    move v3, v1

    :goto_6
    if-lt v3, v10, :cond_9

    .line 424
    if-ge v3, v9, :cond_2

    move v0, v4

    move v4, v1

    .line 427
    :goto_7
    sub-int v5, v8, v7

    if-le v0, v5, :cond_a

    .line 430
    const/16 v0, 0x10

    move v1, v3

    :goto_8
    if-lt v1, v9, :cond_b

    :cond_2
    move-object v0, v2

    .line 434
    goto :goto_0

    .line 392
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 396
    :cond_4
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_2

    .line 399
    :cond_5
    const/4 v0, 0x1

    move v7, v0

    goto :goto_3

    :cond_6
    move v7, v1

    goto :goto_3

    :cond_7
    move v0, v1

    .line 401
    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_5

    .line 410
    :cond_9
    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, p0, v4

    aget v4, v6, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v12, v11, 0x1

    aget-byte v11, p0, v11

    aget v6, v6, v11

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v4, v6

    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v11, v12, 0x1

    aget-byte v12, p0, v12

    aget v6, v6, v12

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    sget-object v12, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v6, v11, 0x1

    aget-byte v11, p0, v11

    aget v11, v12, v11

    or-int/2addr v11, v4

    .line 413
    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v12, v11, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    .line 414
    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v12, v11, 0x8

    int-to-byte v12, v12

    aput-byte v12, v2, v4

    .line 415
    add-int/lit8 v4, v3, 0x1

    int-to-byte v11, v11

    aput-byte v11, v2, v3

    .line 418
    if-lez v0, :cond_d

    add-int/lit8 v3, v5, 0x1

    const/16 v5, 0x13

    if-ne v3, v5, :cond_c

    .line 419
    add-int/lit8 v3, v6, 0x2

    move v5, v1

    move v13, v4

    move v4, v3

    move v3, v13

    .line 420
    goto :goto_6

    .line 428
    :cond_a
    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p0, v0

    aget v0, v6, v0

    mul-int/lit8 v6, v1, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr v0, v6

    or-int/2addr v0, v4

    .line 427
    add-int/lit8 v1, v1, 0x1

    move v4, v0

    move v0, v5

    goto :goto_7

    .line 431
    :cond_b
    add-int/lit8 v3, v1, 0x1

    shr-int v5, v4, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 430
    add-int/lit8 v0, v0, -0x8

    move v1, v3

    goto :goto_8

    :cond_c
    move v5, v3

    move v3, v4

    move v4, v6

    goto/16 :goto_6

    :cond_d
    move v3, v4

    move v4, v6

    goto/16 :goto_6

    :cond_e
    move v8, v0

    goto/16 :goto_2
.end method

.method public static final decodeFast([C)[B
    .locals 14
    .parameter "sArr"

    .prologue
    const/16 v9, 0x4c

    const/16 v6, 0x3d

    const/4 v1, 0x0

    .line 207
    array-length v2, p0

    .line 208
    if-nez v2, :cond_0

    .line 209
    new-array v0, v1, [B

    .line 257
    :goto_0
    return-object v0

    .line 211
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v4, v1

    .line 214
    :goto_1
    if-ge v4, v0, :cond_e

    sget-object v3, Lcom/vpon/utility/Base64;->b:[I

    aget-char v5, p0, v4

    aget v3, v3, v5

    if-ltz v3, :cond_3

    move v8, v0

    .line 218
    :goto_2
    if-lez v8, :cond_1

    sget-object v0, Lcom/vpon/utility/Base64;->b:[I

    aget-char v3, p0, v8

    aget v0, v0, v3

    if-ltz v0, :cond_4

    .line 222
    :cond_1
    aget-char v0, p0, v8

    if-ne v0, v6, :cond_6

    add-int/lit8 v0, v8, -0x1

    aget-char v0, p0, v0

    if-ne v0, v6, :cond_5

    const/4 v0, 0x2

    move v7, v0

    .line 223
    :goto_3
    sub-int v0, v8, v4

    add-int/lit8 v3, v0, 0x1

    .line 224
    if-le v2, v9, :cond_8

    aget-char v0, p0, v9

    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    div-int/lit8 v0, v3, 0x4e

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    .line 226
    :goto_5
    sub-int v2, v3, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v9, v2, v7

    .line 227
    new-array v2, v9, [B

    .line 231
    div-int/lit8 v3, v9, 0x3

    mul-int/lit8 v10, v3, 0x3

    move v5, v1

    move v3, v1

    :goto_6
    if-lt v3, v10, :cond_9

    .line 247
    if-ge v3, v9, :cond_2

    move v0, v4

    move v4, v1

    .line 250
    :goto_7
    sub-int v5, v8, v7

    if-le v0, v5, :cond_a

    .line 253
    const/16 v0, 0x10

    move v1, v3

    :goto_8
    if-lt v1, v9, :cond_b

    :cond_2
    move-object v0, v2

    .line 257
    goto :goto_0

    .line 215
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    :cond_4
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_2

    .line 222
    :cond_5
    const/4 v0, 0x1

    move v7, v0

    goto :goto_3

    :cond_6
    move v7, v1

    goto :goto_3

    :cond_7
    move v0, v1

    .line 224
    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_5

    .line 233
    :cond_9
    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v11, v4, 0x1

    aget-char v4, p0, v4

    aget v4, v6, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v12, v11, 0x1

    aget-char v11, p0, v11

    aget v6, v6, v11

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v4, v6

    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v11, v12, 0x1

    aget-char v12, p0, v12

    aget v6, v6, v12

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v4, v6

    sget-object v12, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v6, v11, 0x1

    aget-char v11, p0, v11

    aget v11, v12, v11

    or-int/2addr v11, v4

    .line 236
    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v12, v11, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    .line 237
    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v12, v11, 0x8

    int-to-byte v12, v12

    aput-byte v12, v2, v4

    .line 238
    add-int/lit8 v4, v3, 0x1

    int-to-byte v11, v11

    aput-byte v11, v2, v3

    .line 241
    if-lez v0, :cond_d

    add-int/lit8 v3, v5, 0x1

    const/16 v5, 0x13

    if-ne v3, v5, :cond_c

    .line 242
    add-int/lit8 v3, v6, 0x2

    move v5, v1

    move v13, v4

    move v4, v3

    move v3, v13

    .line 243
    goto :goto_6

    .line 251
    :cond_a
    sget-object v6, Lcom/vpon/utility/Base64;->b:[I

    add-int/lit8 v5, v0, 0x1

    aget-char v0, p0, v0

    aget v0, v6, v0

    mul-int/lit8 v6, v1, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr v0, v6

    or-int/2addr v0, v4

    .line 250
    add-int/lit8 v1, v1, 0x1

    move v4, v0

    move v0, v5

    goto :goto_7

    .line 254
    :cond_b
    add-int/lit8 v3, v1, 0x1

    shr-int v5, v4, v0

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 253
    add-int/lit8 v0, v0, -0x8

    move v1, v3

    goto :goto_8

    :cond_c
    move v5, v3

    move v3, v4

    move v4, v6

    goto/16 :goto_6

    :cond_d
    move v3, v4

    move v4, v6

    goto/16 :goto_6

    :cond_e
    move v8, v0

    goto/16 :goto_2
.end method

.method public static final encodeToByte([BZ)[B
    .locals 14
    .parameter "sArr"
    .parameter "lineSep"

    .prologue
    const/16 v2, 0x3d

    const/4 v13, 0x2

    const/4 v1, 0x0

    .line 274
    if-eqz p0, :cond_0

    array-length v0, p0

    move v6, v0

    .line 275
    :goto_0
    if-nez v6, :cond_1

    .line 276
    new-array v0, v1, [B

    .line 314
    :goto_1
    return-object v0

    :cond_0
    move v6, v1

    .line 274
    goto :goto_0

    .line 278
    :cond_1
    div-int/lit8 v0, v6, 0x3

    mul-int/lit8 v7, v0, 0x3

    .line 279
    add-int/lit8 v0, v6, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v3, v0, 0x2

    .line 280
    if-eqz p1, :cond_5

    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v0, v0, 0x4c

    shl-int/lit8 v0, v0, 0x1

    :goto_2
    add-int v8, v3, v0

    .line 281
    new-array v3, v8, [B

    move v0, v1

    move v4, v1

    move v5, v1

    .line 284
    :cond_2
    :goto_3
    if-lt v5, v7, :cond_6

    .line 303
    sub-int v0, v6, v7

    .line 304
    if-lez v0, :cond_4

    .line 306
    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    if-ne v0, v13, :cond_3

    add-int/lit8 v1, v6, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    :cond_3
    or-int/2addr v1, v4

    .line 309
    add-int/lit8 v4, v8, -0x4

    sget-object v5, Lcom/vpon/utility/Base64;->a:[C

    shr-int/lit8 v6, v1, 0xc

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 310
    add-int/lit8 v4, v8, -0x3

    sget-object v5, Lcom/vpon/utility/Base64;->a:[C

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 311
    add-int/lit8 v4, v8, -0x2

    if-ne v0, v13, :cond_7

    sget-object v0, Lcom/vpon/utility/Base64;->a:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    int-to-byte v0, v0

    :goto_4
    aput-byte v0, v3, v4

    .line 312
    add-int/lit8 v0, v8, -0x1

    aput-byte v2, v3, v0

    :cond_4
    move-object v0, v3

    .line 314
    goto :goto_1

    :cond_5
    move v0, v1

    .line 280
    goto :goto_2

    .line 286
    :cond_6
    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v5

    add-int/lit8 v5, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 289
    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcom/vpon/utility/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v4

    .line 290
    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcom/vpon/utility/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 291
    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcom/vpon/utility/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v3, v4

    .line 292
    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcom/vpon/utility/Base64;->a:[C

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v11, v9

    int-to-byte v9, v9

    aput-byte v9, v3, v10

    .line 295
    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x13

    if-ne v0, v9, :cond_2

    add-int/lit8 v9, v8, -0x2

    if-ge v4, v9, :cond_2

    .line 296
    add-int/lit8 v9, v4, 0x1

    const/16 v0, 0xd

    aput-byte v0, v3, v4

    .line 297
    add-int/lit8 v0, v9, 0x1

    const/16 v4, 0xa

    aput-byte v4, v3, v9

    move v4, v0

    move v0, v1

    .line 298
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 311
    goto :goto_4
.end method

.method public static final encodeToChar([BZ)[C
    .locals 14
    .parameter "sArr"
    .parameter "lineSep"

    .prologue
    const/16 v2, 0x3d

    const/4 v13, 0x2

    const/4 v1, 0x0

    .line 98
    if-eqz p0, :cond_0

    array-length v0, p0

    move v6, v0

    .line 99
    :goto_0
    if-nez v6, :cond_1

    .line 100
    new-array v0, v1, [C

    .line 138
    :goto_1
    return-object v0

    :cond_0
    move v6, v1

    .line 98
    goto :goto_0

    .line 102
    :cond_1
    div-int/lit8 v0, v6, 0x3

    mul-int/lit8 v7, v0, 0x3

    .line 103
    add-int/lit8 v0, v6, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v3, v0, 0x2

    .line 104
    if-eqz p1, :cond_5

    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v0, v0, 0x4c

    shl-int/lit8 v0, v0, 0x1

    :goto_2
    add-int v8, v3, v0

    .line 105
    new-array v3, v8, [C

    move v0, v1

    move v4, v1

    move v5, v1

    .line 108
    :cond_2
    :goto_3
    if-lt v5, v7, :cond_6

    .line 127
    sub-int v0, v6, v7

    .line 128
    if-lez v0, :cond_4

    .line 130
    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    if-ne v0, v13, :cond_3

    add-int/lit8 v1, v6, -0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x2

    :cond_3
    or-int/2addr v1, v4

    .line 133
    add-int/lit8 v4, v8, -0x4

    sget-object v5, Lcom/vpon/utility/Base64;->a:[C

    shr-int/lit8 v6, v1, 0xc

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 134
    add-int/lit8 v4, v8, -0x3

    sget-object v5, Lcom/vpon/utility/Base64;->a:[C

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 135
    add-int/lit8 v4, v8, -0x2

    if-ne v0, v13, :cond_7

    sget-object v0, Lcom/vpon/utility/Base64;->a:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    :goto_4
    aput-char v0, v3, v4

    .line 136
    add-int/lit8 v0, v8, -0x1

    aput-char v2, v3, v0

    :cond_4
    move-object v0, v3

    .line 138
    goto :goto_1

    :cond_5
    move v0, v1

    .line 104
    goto :goto_2

    .line 110
    :cond_6
    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v5

    add-int/lit8 v5, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 113
    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcom/vpon/utility/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v3, v4

    .line 114
    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcom/vpon/utility/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v3, v10

    .line 115
    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcom/vpon/utility/Base64;->a:[C

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    aput-char v11, v3, v4

    .line 116
    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcom/vpon/utility/Base64;->a:[C

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v11, v9

    aput-char v9, v3, v10

    .line 119
    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/16 v9, 0x13

    if-ne v0, v9, :cond_2

    add-int/lit8 v9, v8, -0x2

    if-ge v4, v9, :cond_2

    .line 120
    add-int/lit8 v9, v4, 0x1

    const/16 v0, 0xd

    aput-char v0, v3, v4

    .line 121
    add-int/lit8 v0, v9, 0x1

    const/16 v4, 0xa

    aput-char v4, v3, v9

    move v4, v0

    move v0, v1

    .line 122
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 135
    goto :goto_4
.end method

.method public static final encodeToString([BZ)Ljava/lang/String;
    .locals 2
    .parameter "sArr"
    .parameter "lineSep"

    .prologue
    .line 451
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/vpon/utility/Base64;->encodeToChar([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
