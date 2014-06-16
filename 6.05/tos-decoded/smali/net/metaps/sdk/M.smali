.class Lnet/metaps/sdk/M;
.super Ljava/lang/Object;
.source "WebViewTimeOutClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/metaps/sdk/L;


# direct methods
.method constructor <init>(Lnet/metaps/sdk/L;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/M;->a:Lnet/metaps/sdk/L;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lnet/metaps/util/d;->a()V

    .line 46
    iget-object v0, p0, Lnet/metaps/sdk/M;->a:Lnet/metaps/sdk/L;

    invoke-static {v0}, Lnet/metaps/sdk/L;->a(Lnet/metaps/sdk/L;)Lnet/metaps/sdk/K;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/K;->b(Lnet/metaps/sdk/K;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "timeOut"

    invoke-static {v1}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    return-void
.end method
