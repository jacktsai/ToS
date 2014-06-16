.class Lnet/gree/unitywebview/WebViewPlugin$6;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/WebViewPlugin;->LoadURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/WebViewPlugin;

.field private final synthetic val$paramString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/WebViewPlugin;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/gree/unitywebview/WebViewPlugin$6;->this$0:Lnet/gree/unitywebview/WebViewPlugin;

    iput-object p2, p0, Lnet/gree/unitywebview/WebViewPlugin$6;->val$paramString:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lnet/gree/unitywebview/WebViewPlugin;->access$3()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lnet/gree/unitywebview/WebViewPlugin$6;->val$paramString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 151
    return-void
.end method
