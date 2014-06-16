.class Lnet/gree/unitywebview/WebViewPlugin$5;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/WebViewPlugin;->Destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/WebViewPlugin;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/WebViewPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/gree/unitywebview/WebViewPlugin$5;->this$0:Lnet/gree/unitywebview/WebViewPlugin;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lnet/gree/unitywebview/WebViewPlugin;->access$3()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lnet/gree/unitywebview/WebViewPlugin;->access$4()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Lnet/gree/unitywebview/WebViewPlugin;->access$3()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 137
    const/4 v0, 0x0

    invoke-static {v0}, Lnet/gree/unitywebview/WebViewPlugin;->access$5(Landroid/webkit/WebView;)V

    .line 139
    :cond_0
    return-void
.end method
