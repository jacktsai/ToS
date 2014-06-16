.class Lnet/metaps/sdk/e;
.super Ljava/lang/Object;
.source "Factory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/e;->a:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    sget-object v0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    iget-object v1, p0, Lnet/metaps/sdk/e;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 325
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 326
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 327
    return-void
.end method
