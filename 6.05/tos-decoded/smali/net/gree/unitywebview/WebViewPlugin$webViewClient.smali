.class Lnet/gree/unitywebview/WebViewPlugin$webViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gree/unitywebview/WebViewPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "webViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/WebViewPlugin;


# direct methods
.method private constructor <init>(Lnet/gree/unitywebview/WebViewPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lnet/gree/unitywebview/WebViewPlugin$webViewClient;->this$0:Lnet/gree/unitywebview/WebViewPlugin;

    .line 225
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 227
    return-void
.end method

.method synthetic constructor <init>(Lnet/gree/unitywebview/WebViewPlugin;Lnet/gree/unitywebview/WebViewPlugin$webViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lnet/gree/unitywebview/WebViewPlugin$webViewClient;-><init>(Lnet/gree/unitywebview/WebViewPlugin;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "paramWebView"
    .parameter "paramString"

    .prologue
    .line 231
    return-void
.end method
