.class public final Lcom/vpon/utility/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    .line 36
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 31
    :goto_1
    if-lt v2, v3, :cond_3

    move v0, v1

    .line 36
    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isNotBlank(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/vpon/utility/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
