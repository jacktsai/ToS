.class public final Lcom/vpon/ats/VponAts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpon/ats/VponAts$a;
    }
.end annotation


# static fields
.field public static final vponTag:Ljava/lang/String; = "VponAtsTag"


# instance fields
.field a:D

.field b:D

.field c:F

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Lcom/vpon/ats/VponAtsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vpon/ats/VponAtsListener;)V
    .locals 3
    .parameter "context"
    .parameter "goalId"
    .parameter "listener"

    .prologue
    const-wide/16 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/vpon/ats/VponAts;->d:Ljava/lang/String;

    .line 37
    iput-wide v1, p0, Lcom/vpon/ats/VponAts;->a:D

    .line 38
    iput-wide v1, p0, Lcom/vpon/ats/VponAts;->b:D

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/vpon/ats/VponAts;->c:F

    .line 45
    iput-object p1, p0, Lcom/vpon/ats/VponAts;->e:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/vpon/ats/VponAts;->d:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/vpon/ats/VponAts;->f:Lcom/vpon/ats/VponAtsListener;

    .line 50
    :try_start_0
    invoke-static {p1}, Lcom/vpon/utility/LocationUtil;->instance(Landroid/content/Context;)Lcom/vpon/utility/LocationUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpon/utility/LocationUtil;->getLocationPrivider()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    const-string v0, "AdManager Permission"

    const-string v1, "No android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/vpon/ats/VponAts;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vpon/ats/VponAts;->e:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {p1, p2}, Lcom/vpon/utility/AdOnUrlUtil;->getAdReqUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/vpon/ats/VponAts;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/vpon/ats/VponAts;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vpon/ats/VponAts;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/vpon/ats/a;->b(Landroid/content/Context;)Z

    move-result v0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/vpon/ats/VponAts;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v2, Lcom/vpon/ats/VponAts$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vpon/ats/VponAts$a;-><init>(Lcom/vpon/ats/VponAts;Lcom/vpon/ats/VponAts$a;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/vpon/ats/VponAts$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method static synthetic b(Lcom/vpon/ats/VponAts;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/vpon/ats/VponAts;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vpon/ats/VponAts;->f:Lcom/vpon/ats/VponAtsListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/vpon/ats/VponAts;->f:Lcom/vpon/ats/VponAtsListener;

    invoke-interface {v0, p1}, Lcom/vpon/ats/VponAtsListener;->onVponAtsSuccess(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vpon/ats/VponAts;->f:Lcom/vpon/ats/VponAtsListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/vpon/ats/VponAts;->f:Lcom/vpon/ats/VponAtsListener;

    invoke-interface {v0, p1}, Lcom/vpon/ats/VponAtsListener;->onVponAtsFail(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vpon/ats/VponAts;->f:Lcom/vpon/ats/VponAtsListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/vpon/ats/VponAts;->f:Lcom/vpon/ats/VponAtsListener;

    invoke-interface {v0, p1}, Lcom/vpon/ats/VponAtsListener;->onVponAtsWarning(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public tracker()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vpon/ats/VponAts;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/vpon/utility/AtsErrorWarningUtil;->printWarningLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 60
    invoke-direct {p0, v0}, Lcom/vpon/ats/VponAts;->d(Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/vpon/ats/VponAts;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vpon/ats/VponAts;->a(Ljava/lang/String;)V

    .line 64
    return-void
.end method
