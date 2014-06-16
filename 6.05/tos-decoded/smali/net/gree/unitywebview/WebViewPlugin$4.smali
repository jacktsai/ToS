.class Lnet/gree/unitywebview/WebViewPlugin$4;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/WebViewPlugin;->createDismissButton(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lnet/gree/unitywebview/WebViewPlugin$4;->this$0:Lnet/gree/unitywebview/WebViewPlugin;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "paramAnonymousView"

    .prologue
    .line 110
    iget-object v0, p0, Lnet/gree/unitywebview/WebViewPlugin$4;->this$0:Lnet/gree/unitywebview/WebViewPlugin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/gree/unitywebview/WebViewPlugin;->SetVisibility(Z)V

    .line 111
    return-void
.end method
