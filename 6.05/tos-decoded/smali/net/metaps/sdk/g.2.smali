.class Lnet/metaps/sdk/g;
.super Ljava/lang/Object;
.source "FeaturedAppDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/metaps/sdk/f;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lnet/metaps/sdk/f;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/g;->a:Lnet/metaps/sdk/f;

    iput-object p2, p0, Lnet/metaps/sdk/g;->b:Landroid/app/Activity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 147
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lnet/metaps/sdk/g;->b:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method
