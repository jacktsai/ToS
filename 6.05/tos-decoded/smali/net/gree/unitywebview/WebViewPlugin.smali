.class public Lnet/gree/unitywebview/WebViewPlugin;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gree/unitywebview/WebViewPlugin$webViewClient;
    }
.end annotation


# static fields
.field private static _url:Ljava/lang/String;

.field private static layout:Landroid/widget/FrameLayout;

.field private static mCrossImage:Landroid/widget/ImageView;

.field private static mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    .line 29
    const-string v0, ""

    sput-object v0, Lnet/gree/unitywebview/WebViewPlugin;->_url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 158
    .local v0, localActivity:Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/WebViewPlugin$7;

    invoke-direct {v1}, Lnet/gree/unitywebview/WebViewPlugin$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->_url:Ljava/lang/String;

    return-object v1
.end method

.method public static IsWebViewShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 170
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lnet/gree/unitywebview/WebViewPlugin;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lnet/gree/unitywebview/WebViewPlugin;->createLayout(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1(Lnet/gree/unitywebview/WebViewPlugin;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lnet/gree/unitywebview/WebViewPlugin;->createWebView(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$2(Lnet/gree/unitywebview/WebViewPlugin;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lnet/gree/unitywebview/WebViewPlugin;->createDismissButton(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$3()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$4()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    sput-object p0, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$6(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    sput-object p0, Lnet/gree/unitywebview/WebViewPlugin;->_url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    sput-object p0, Lnet/gree/unitywebview/WebViewPlugin;->mCrossImage:Landroid/widget/ImageView;

    return-void
.end method

.method private createDismissButton(Landroid/app/Activity;)V
    .locals 10
    .parameter "paramActivity"

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x4248

    const/16 v5, 0xa

    .line 102
    sget-object v4, Lnet/gree/unitywebview/WebViewPlugin;->mCrossImage:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 104
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lnet/gree/unitywebview/WebViewPlugin;->mCrossImage:Landroid/widget/ImageView;

    .line 105
    sget-object v4, Lnet/gree/unitywebview/WebViewPlugin;->mCrossImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 106
    sget-object v4, Lnet/gree/unitywebview/WebViewPlugin;->mCrossImage:Landroid/widget/ImageView;

    new-instance v5, Lnet/gree/unitywebview/WebViewPlugin$4;

    invoke-direct {v5, p0}, Lnet/gree/unitywebview/WebViewPlugin$4;-><init>(Lnet/gree/unitywebview/WebViewPlugin;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 114
    .local v0, f:F
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "com_facebook_close"

    const-string v6, "drawable"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 115
    .local v1, iconId:I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 116
    .local v2, localDrawable:Landroid/graphics/drawable/Drawable;
    sget-object v4, Lnet/gree/unitywebview/WebViewPlugin;->mCrossImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    sget-object v4, Lnet/gree/unitywebview/WebViewPlugin;->mCrossImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    sget-object v4, Lnet/gree/unitywebview/WebViewPlugin;->mCrossImage:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v3, localLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    mul-float v4, v8, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 122
    mul-float v4, v8, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 123
    sget-object v4, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    sget-object v5, Lnet/gree/unitywebview/WebViewPlugin;->mCrossImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .end local v0           #f:F
    .end local v1           #iconId:I
    .end local v2           #localDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #localLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private createLayout(Landroid/app/Activity;)V
    .locals 4
    .parameter "paramActivity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 47
    sget-object v0, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    .line 50
    sget-object v0, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 51
    sget-object v0, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 52
    sget-object v0, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 53
    sget-object v0, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    new-instance v1, Lnet/gree/unitywebview/WebViewPlugin$2;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/WebViewPlugin$2;-><init>(Lnet/gree/unitywebview/WebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget-object v0, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    :cond_0
    return-void
.end method

.method private createWebView(Landroid/app/Activity;)V
    .locals 7
    .parameter "paramActivity"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    .line 68
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    const v2, -0xcccccd

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 69
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 70
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 71
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lnet/gree/unitywebview/WebViewPlugin$webViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lnet/gree/unitywebview/WebViewPlugin$webViewClient;-><init>(Lnet/gree/unitywebview/WebViewPlugin;Lnet/gree/unitywebview/WebViewPlugin$webViewClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 73
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 74
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 75
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lnet/gree/unitywebview/WebViewPlugin$3;

    invoke-direct {v2, p0}, Lnet/gree/unitywebview/WebViewPlugin$3;-><init>(Lnet/gree/unitywebview/WebViewPlugin;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 91
    .local v0, localWebSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 92
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 93
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 95
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 96
    sget-object v1, Lnet/gree/unitywebview/WebViewPlugin;->layout:Landroid/widget/FrameLayout;

    sget-object v2, Lnet/gree/unitywebview/WebViewPlugin;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .end local v0           #localWebSettings:Landroid/webkit/WebSettings;
    :cond_0
    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 130
    .local v0, localActivity:Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/WebViewPlugin$5;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/WebViewPlugin$5;-><init>(Lnet/gree/unitywebview/WebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public EvaluateJS(Ljava/lang/String;)V
    .locals 2
    .parameter "paramString"

    .prologue
    .line 177
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 178
    .local v0, localActivity:Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/WebViewPlugin$8;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/WebViewPlugin$8;-><init>(Lnet/gree/unitywebview/WebViewPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public Init()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 34
    .local v0, localActivity:Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/WebViewPlugin$1;

    invoke-direct {v1, p0, v0}, Lnet/gree/unitywebview/WebViewPlugin$1;-><init>(Lnet/gree/unitywebview/WebViewPlugin;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public LoadURL(Ljava/lang/String;)V
    .locals 2
    .parameter "paramString"

    .prologue
    .line 145
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 146
    .local v0, localActivity:Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/WebViewPlugin$6;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/WebViewPlugin$6;-><init>(Lnet/gree/unitywebview/WebViewPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public SetMargins(IIII)V
    .locals 0
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "left"

    .prologue
    .line 189
    return-void
.end method

.method public SetVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 193
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 194
    .local v0, localActivity:Landroid/app/Activity;
    new-instance v1, Lnet/gree/unitywebview/WebViewPlugin$9;

    invoke-direct {v1, p0, p1, v0}, Lnet/gree/unitywebview/WebViewPlugin$9;-><init>(Lnet/gree/unitywebview/WebViewPlugin;ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method
