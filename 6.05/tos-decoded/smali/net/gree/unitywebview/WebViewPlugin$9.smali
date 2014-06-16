.class Lnet/gree/unitywebview/WebViewPlugin$9;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/WebViewPlugin;->SetVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/WebViewPlugin;

.field private final synthetic val$localActivity:Landroid/app/Activity;

.field private final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/WebViewPlugin;ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/gree/unitywebview/WebViewPlugin$9;->this$0:Lnet/gree/unitywebview/WebViewPlugin;

    iput-boolean p2, p0, Lnet/gree/unitywebview/WebViewPlugin$9;->val$visible:Z

    iput-object p3, p0, Lnet/gree/unitywebview/WebViewPlugin$9;->val$localActivity:Landroid/app/Activity;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 198
    iget-boolean v1, p0, Lnet/gree/unitywebview/WebViewPlugin$9;->val$visible:Z

    if-eqz v1, :cond_0

    .line 200
    invoke-static {}, Lnet/gree/unitywebview/WebViewPlugin;->access$4()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 201
    invoke-static {}, Lnet/gree/unitywebview/WebViewPlugin;->access$4()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 202
    const-string v1, "Native_InputListener"

    const-string v2, "DisableTouch"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lnet/gree/unitywebview/WebViewPlugin$9;->val$localActivity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 207
    .local v0, localInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lnet/gree/unitywebview/WebViewPlugin;->access$3()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 209
    const-string v1, ""

    invoke-static {v1}, Lnet/gree/unitywebview/WebViewPlugin;->access$6(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lnet/gree/unitywebview/WebViewPlugin;->access$4()Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 212
    invoke-static {}, Lnet/gree/unitywebview/WebViewPlugin;->access$4()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 214
    invoke-static {v4}, Lnet/gree/unitywebview/WebViewPlugin;->access$5(Landroid/webkit/WebView;)V

    .line 215
    invoke-static {v4}, Lnet/gree/unitywebview/WebViewPlugin;->access$7(Landroid/widget/ImageView;)V

    .line 217
    const-string v1, "Native_InputListener"

    const-string v2, "EnableTouch"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
