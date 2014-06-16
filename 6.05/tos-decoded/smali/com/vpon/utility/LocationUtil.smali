.class public final Lcom/vpon/utility/LocationUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static a:Lcom/vpon/utility/LocationUtil;


# instance fields
.field private b:Landroid/location/LocationManager;

.field private c:Landroid/location/Location;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/vpon/utility/LocationUtil;->b:Landroid/location/LocationManager;

    .line 20
    iput-object v0, p0, Lcom/vpon/utility/LocationUtil;->c:Landroid/location/Location;

    .line 23
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/vpon/utility/LocationUtil;->b:Landroid/location/LocationManager;

    .line 24
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vpon/utility/LocationUtil;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 28
    return-void
.end method

.method public static final instance(Landroid/content/Context;)Lcom/vpon/utility/LocationUtil;
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    sget-object v0, Lcom/vpon/utility/LocationUtil;->a:Lcom/vpon/utility/LocationUtil;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/vpon/utility/LocationUtil;

    invoke-direct {v0, p0}, Lcom/vpon/utility/LocationUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vpon/utility/LocationUtil;->a:Lcom/vpon/utility/LocationUtil;

    .line 47
    :cond_0
    sget-object v0, Lcom/vpon/utility/LocationUtil;->a:Lcom/vpon/utility/LocationUtil;

    return-object v0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vpon/utility/LocationUtil;->c:Landroid/location/Location;

    return-object v0
.end method

.method public getLocationPrivider()V
    .locals 6

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vpon/utility/LocationUtil;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vpon/utility/LocationUtil;->b:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    :try_start_0
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/vpon/utility/LocationUtil;->b:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v0, p0, Lcom/vpon/utility/LocationUtil;->b:Landroid/location/LocationManager;

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x4120

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_1
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vpon/utility/LocationUtil;->c:Landroid/location/Location;

    .line 62
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 67
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 72
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 77
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vpon/utility/LocationUtil;->a()V

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/vpon/utility/LocationUtil;->a:Lcom/vpon/utility/LocationUtil;

    .line 53
    return-void
.end method
