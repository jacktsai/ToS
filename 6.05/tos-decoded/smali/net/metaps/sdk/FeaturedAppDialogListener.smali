.class public abstract Lnet/metaps/sdk/FeaturedAppDialogListener;
.super Ljava/lang/Object;
.source "FeaturedAppDialogListener.java"


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->b:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public onCancelDialog(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lnet/metaps/sdk/FeaturedAppDialogListener;->onDismissDialog(Landroid/app/Activity;)V

    .line 98
    return-void
.end method

.method public onDismissDialog(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 56
    return-void
.end method

.method public onDownloadApplication(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lnet/metaps/sdk/FeaturedAppDialogListener;->onDismissDialog(Landroid/app/Activity;)V

    .line 108
    return-void
.end method

.method public onNoFeaturedApplication(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 82
    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lnet/metaps/sdk/FeaturedAppDialogListener;->onDismissDialog(Landroid/app/Activity;)V

    .line 86
    return-void
.end method

.method public onShowDialog(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 67
    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 70
    :cond_0
    return-void
.end method

.method public onShowDialogNotPossible(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lnet/metaps/sdk/FeaturedAppDialogListener;->onDismissDialog(Landroid/app/Activity;)V

    .line 118
    return-void
.end method

.method public onStartWaiting(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 32
    iget-object v1, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    .line 35
    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 36
    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    const-string v2, "loadingMessage"

    invoke-static {v2}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 38
    iget-object v0, p0, Lnet/metaps/sdk/FeaturedAppDialogListener;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 32
    :cond_1
    monitor-exit v1

    .line 41
    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
