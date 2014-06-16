.class Lnet/metaps/sdk/i;
.super Ljava/lang/Object;
.source "FeaturedAppDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/i;->a:Landroid/app/Activity;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->j()Lnet/metaps/sdk/FeaturedAppDialogListener;

    move-result-object v0

    iget-object v1, p0, Lnet/metaps/sdk/i;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lnet/metaps/sdk/FeaturedAppDialogListener;->onNoFeaturedApplication(Landroid/app/Activity;)V

    .line 524
    return-void
.end method
