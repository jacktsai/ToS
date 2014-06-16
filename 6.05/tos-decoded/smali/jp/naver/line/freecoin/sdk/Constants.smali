.class public Ljp/naver/line/freecoin/sdk/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field static final ACTION:Ljava/lang/String; = "action"

.field static final NO_REFERRER:Ljava/lang/String; = "no_referrer"

.field static final PREFIX:Ljava/lang/String; = "LINE"

.field static final PREF_KEY:Ljava/lang/String; = "sdk_pref"

.field static final REFERRER:Ljava/lang/String; = "referrer"

.field static final REFERRER_PREF_KEY:Ljava/lang/String; = "referrer_pref"

.field static final REQUEST_URL:Ljava/lang/String; = null

.field static final SDK_VERSION:Ljava/lang/String; = "1.0.4"

.field static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "https://api.freecoin.line.naver.jp/v1/cv"

    sput-object v0, Ljp/naver/line/freecoin/sdk/Constants;->REQUEST_URL:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
