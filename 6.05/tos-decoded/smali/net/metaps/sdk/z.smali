.class Lnet/metaps/sdk/z;
.super Ljava/lang/Object;
.source "JSController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/metaps/sdk/y;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lnet/metaps/sdk/y;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/z;->a:Lnet/metaps/sdk/y;

    iput-object p2, p0, Lnet/metaps/sdk/z;->b:Landroid/content/Intent;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    :try_start_0
    iget-object v0, p0, Lnet/metaps/sdk/z;->a:Lnet/metaps/sdk/y;

    invoke-static {v0}, Lnet/metaps/sdk/y;->a(Lnet/metaps/sdk/y;)Lnet/metaps/sdk/JSController;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/JSController;->a(Lnet/metaps/sdk/JSController;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lnet/metaps/sdk/z;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 210
    iget-object v0, p0, Lnet/metaps/sdk/z;->a:Lnet/metaps/sdk/y;

    invoke-static {v0}, Lnet/metaps/sdk/y;->a(Lnet/metaps/sdk/y;)Lnet/metaps/sdk/JSController;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lnet/metaps/sdk/JSController;->a(Lnet/metaps/sdk/JSController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
