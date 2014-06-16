.class Lnet/metaps/sdk/UnityWrapper$3;
.super Lnet/metaps/sdk/FeaturedAppDialogListener;
.source "UnityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/metaps/sdk/UnityWrapper;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lnet/metaps/sdk/FeaturedAppDialogListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancelDialog(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 280
    const-string v0, "MetapsSDK"

    const-string v1, "FeaturedAppDialogListener onCancelDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeaturedAppDialogOnCancelDialog"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public onDownloadApplication(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 285
    const-string v0, "MetapsSDK"

    const-string v1, "FeaturedAppDialogListener onDownloadApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeaturedAppDialogOnDownloadApplication"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public onNoFeaturedApplication(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 275
    const-string v0, "MetapsSDK"

    const-string v1, "FeaturedAppDialogListener onNoFeaturedApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeaturedAppDialogOnNoFeaturedApplication"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public onShowDialog(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 270
    const-string v0, "MetapsSDK"

    const-string v1, "FeaturedAppDialogListener onShowDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeaturedAppDialogOnShowDialog"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onShowDialogNotPossible(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 290
    const-string v0, "MetapsSDK"

    const-string v1, "FeaturedAppDialogListener onShowDialogNotPossible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeaturedAppDialogOnShowDialogNotPossible"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public onStartWaiting(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 265
    const-string v0, "MetapsSDK"

    const-string v1, "FeaturedAppDialogListener onStartWaiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeaturedAppDialogOnStartWaiting"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method
