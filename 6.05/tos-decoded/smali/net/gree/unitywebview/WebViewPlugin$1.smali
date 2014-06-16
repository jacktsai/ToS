.class Lnet/gree/unitywebview/WebViewPlugin$1;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/WebViewPlugin;->Init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/WebViewPlugin;

.field private final synthetic val$localActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/WebViewPlugin;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/gree/unitywebview/WebViewPlugin$1;->this$0:Lnet/gree/unitywebview/WebViewPlugin;

    iput-object p2, p0, Lnet/gree/unitywebview/WebViewPlugin$1;->val$localActivity:Landroid/app/Activity;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lnet/gree/unitywebview/WebViewPlugin$1;->this$0:Lnet/gree/unitywebview/WebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/WebViewPlugin$1;->val$localActivity:Landroid/app/Activity;

    #calls: Lnet/gree/unitywebview/WebViewPlugin;->createLayout(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lnet/gree/unitywebview/WebViewPlugin;->access$0(Lnet/gree/unitywebview/WebViewPlugin;Landroid/app/Activity;)V

    .line 39
    iget-object v0, p0, Lnet/gree/unitywebview/WebViewPlugin$1;->this$0:Lnet/gree/unitywebview/WebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/WebViewPlugin$1;->val$localActivity:Landroid/app/Activity;

    #calls: Lnet/gree/unitywebview/WebViewPlugin;->createWebView(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lnet/gree/unitywebview/WebViewPlugin;->access$1(Lnet/gree/unitywebview/WebViewPlugin;Landroid/app/Activity;)V

    .line 40
    iget-object v0, p0, Lnet/gree/unitywebview/WebViewPlugin$1;->this$0:Lnet/gree/unitywebview/WebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/WebViewPlugin$1;->val$localActivity:Landroid/app/Activity;

    #calls: Lnet/gree/unitywebview/WebViewPlugin;->createDismissButton(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lnet/gree/unitywebview/WebViewPlugin;->access$2(Lnet/gree/unitywebview/WebViewPlugin;Landroid/app/Activity;)V

    .line 41
    return-void
.end method
