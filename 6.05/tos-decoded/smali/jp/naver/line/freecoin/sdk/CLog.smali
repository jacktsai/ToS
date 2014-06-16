.class public Ljp/naver/line/freecoin/sdk/CLog;
.super Ljava/lang/Object;
.source "CLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LineFreeCoinSdk"

.field private static isDebug:Z

.field private static isTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isDebug:Z

    .line 8
    sput-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isTest:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 40
    sget-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isTest:Z

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "LineFreeCoinSdk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 28
    sget-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isTest:Z

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "LineFreeCoinSdk"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 22
    sget-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isTest:Z

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "LineFreeCoinSdk"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    return-void
.end method

.method public static ld(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 48
    sget-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "LineFreeCoinSdk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method

.method public static le(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 55
    sget-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "LineFreeCoinSdk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public static showLog(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 12
    sput-boolean p0, Ljp/naver/line/freecoin/sdk/CLog;->isDebug:Z

    .line 14
    return-void
.end method

.method public static showTestLog(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 17
    sput-boolean p0, Ljp/naver/line/freecoin/sdk/CLog;->isTest:Z

    .line 19
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 34
    sget-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isDebug:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Ljp/naver/line/freecoin/sdk/CLog;->isTest:Z

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "LineFreeCoinSdk"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method
