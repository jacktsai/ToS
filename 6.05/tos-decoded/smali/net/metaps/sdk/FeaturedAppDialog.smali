.class public final Lnet/metaps/sdk/FeaturedAppDialog;
.super Ljava/lang/Object;
.source "FeaturedAppDialog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/metaps/sdk/FeaturedAppDialog$a;
    }
.end annotation


# static fields
.field protected static final a:I = 0x1

.field protected static final b:I = 0x2

.field protected static final c:I = 0x3

.field protected static final d:I = 0x4

.field private static final e:F = 0.9f

.field private static final f:I = 0x64

.field private static final g:I = 0xf0

.field private static final h:I = 0x12

.field private static i:Landroid/app/Dialog;

.field private static j:Ljava/lang/Object;

.field private static k:Ljava/lang/Object;

.field private static l:Ljava/lang/Object;

.field private static m:Landroid/app/Activity;

.field private static n:I

.field private static o:I

.field private static p:Lnet/metaps/sdk/FeaturedAppDialogListener;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Landroid/graphics/Bitmap;

.field private static t:Z

.field private static u:Ljava/lang/Thread;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 62
    sput-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->i:Landroid/app/Dialog;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->j:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->k:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->l:Ljava/lang/Object;

    .line 72
    sput v2, Lnet/metaps/sdk/FeaturedAppDialog;->n:I

    .line 74
    sput v2, Lnet/metaps/sdk/FeaturedAppDialog;->o:I

    .line 78
    sput-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->q:Ljava/lang/String;

    .line 80
    sput-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->r:Ljava/lang/String;

    .line 82
    sput-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->s:Landroid/graphics/Bitmap;

    .line 84
    sput-boolean v3, Lnet/metaps/sdk/FeaturedAppDialog;->t:Z

    .line 86
    sput-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->u:Ljava/lang/Thread;

    .line 88
    sput-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->v:Ljava/lang/String;

    .line 90
    sput-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->w:Ljava/lang/String;

    .line 92
    sput-boolean v3, Lnet/metaps/sdk/FeaturedAppDialog;->x:Z

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->q:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 454
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    move v0, v1

    .line 456
    :goto_0
    if-eqz v0, :cond_0

    .line 457
    const/4 v2, -0x1

    sput v2, Lnet/metaps/sdk/FeaturedAppDialog;->o:I

    .line 458
    sget-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->i:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 459
    const/4 v2, 0x0

    sput-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->i:Landroid/app/Dialog;

    .line 460
    sget-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    if-eqz v2, :cond_0

    sget-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    sget-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    sget v3, Lnet/metaps/sdk/FeaturedAppDialog;->n:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 465
    :cond_0
    if-eq p0, v5, :cond_1

    if-ne p0, v6, :cond_2

    if-eqz v0, :cond_2

    .line 466
    :cond_1
    sget-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    sget-object v3, Lnet/metaps/sdk/FeaturedAppDialog;->v:Ljava/lang/String;

    sget-object v4, Lnet/metaps/sdk/FeaturedAppDialog;->w:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_2
    if-eq p0, v1, :cond_4

    .line 470
    if-eq p0, v5, :cond_3

    const/4 v1, 0x3

    if-ne p0, v1, :cond_6

    if-eqz v0, :cond_6

    .line 471
    :cond_3
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->i(Landroid/app/Activity;)V

    .line 476
    :cond_4
    :goto_1
    return-void

    .line 454
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 472
    :cond_6
    if-ne p0, v6, :cond_4

    if-eqz v0, :cond_4

    .line 473
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->j(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    invoke-static {p0}, Lnet/metaps/sdk/FeaturedAppDialog;->h(Landroid/app/Activity;)V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    invoke-static {p0}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lnet/metaps/sdk/FeaturedAppDialog;->t:Z

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    sput-boolean v0, Lnet/metaps/sdk/FeaturedAppDialog;->t:Z

    .line 127
    new-instance v0, Lnet/metaps/sdk/f;

    invoke-direct {v0, p0, p1, p2}, Lnet/metaps/sdk/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->u:Ljava/lang/Thread;

    .line 166
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->u:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 124
    :cond_0
    monitor-exit v1

    .line 169
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    sput-object p0, Lnet/metaps/sdk/FeaturedAppDialog;->s:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    sput-object p0, Lnet/metaps/sdk/FeaturedAppDialog;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 84
    sput-boolean p0, Lnet/metaps/sdk/FeaturedAppDialog;->t:Z

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 479
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 480
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    :cond_0
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->s:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(I)V
    .locals 0
    .parameter

    .prologue
    .line 74
    sput p0, Lnet/metaps/sdk/FeaturedAppDialog;->o:I

    return-void
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    invoke-static {p0}, Lnet/metaps/sdk/FeaturedAppDialog;->e(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    sput-object p0, Lnet/metaps/sdk/FeaturedAppDialog;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    invoke-static {p0}, Lnet/metaps/sdk/FeaturedAppDialog;->g(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic d()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->u:Ljava/lang/Thread;

    return-object v0
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    new-instance v0, Lnet/metaps/sdk/m;

    invoke-direct {v0, p0}, Lnet/metaps/sdk/m;-><init>(Landroid/app/Activity;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 247
    return-void
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->l:Ljava/lang/Object;

    return-object v0
.end method

.method private static e(Landroid/app/Activity;)V
    .locals 14
    .parameter

    .prologue
    const/4 v7, -0x1

    const-wide v12, 0x4046800000000000L

    const-wide/high16 v10, 0x4032

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 255
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 256
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x1030009

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->i:Landroid/app/Dialog;

    .line 257
    sput-object p0, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    .line 258
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 259
    new-instance v2, Lnet/metaps/sdk/JSController;

    invoke-direct {v2, p0, v0}, Lnet/metaps/sdk/JSController;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 260
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 262
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 265
    sget-object v5, Lnet/metaps/sdk/FeaturedAppDialog;->i:Landroid/app/Dialog;

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 266
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x100

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 267
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 268
    sget-object v6, Lnet/metaps/sdk/FeaturedAppDialog;->i:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    sget-object v5, Lnet/metaps/sdk/FeaturedAppDialog;->i:Landroid/app/Dialog;

    new-instance v6, Lnet/metaps/sdk/o;

    invoke-direct {v6}, Lnet/metaps/sdk/o;-><init>()V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 280
    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->setId(I)V

    .line 281
    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 282
    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 283
    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 285
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 287
    invoke-static {v0, v8}, Lnet/metaps/sdk/FeaturedAppDialog$a;->a(Landroid/view/View;I)V

    .line 289
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 290
    const-string v5, "MetapsJs"

    invoke-virtual {v0, v2, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Metaps SDK ver"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "2.1.1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 293
    new-instance v2, Lnet/metaps/sdk/p;

    invoke-direct {v2, v1}, Lnet/metaps/sdk/p;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 310
    new-instance v2, Lnet/metaps/sdk/q;

    invoke-direct {v2}, Lnet/metaps/sdk/q;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 314
    new-instance v2, Lnet/metaps/sdk/r;

    invoke-direct {v2, v1, v4}, Lnet/metaps/sdk/r;-><init>(Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 338
    new-instance v2, Lnet/metaps/sdk/t;

    invoke-direct {v2}, Lnet/metaps/sdk/t;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 366
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 367
    new-instance v2, Lnet/metaps/sdk/u;

    invoke-direct {v2}, Lnet/metaps/sdk/u;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 375
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 376
    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 377
    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 382
    int-to-float v2, v2

    const v4, 0x3f666666

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 385
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 386
    const/16 v2, 0xd

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 387
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    sget-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->s:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 391
    sget-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 392
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v4, 0x4370

    div-float/2addr v2, v4

    .line 394
    sget-object v4, Lnet/metaps/sdk/FeaturedAppDialog;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 395
    sget-object v5, Lnet/metaps/sdk/FeaturedAppDialog;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 397
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 398
    const/4 v6, 0x2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 399
    invoke-virtual {v0}, Landroid/webkit/WebView;->getId()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 401
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-int v6, v6

    rsub-int/lit8 v6, v6, 0x12

    .line 402
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v10

    double-to-int v7, v7

    rsub-int/lit8 v7, v7, 0x12

    .line 404
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    .line 405
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    .line 407
    neg-int v4, v4

    neg-int v2, v2

    invoke-virtual {v5, v4, v9, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 408
    invoke-virtual {v3, v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    :cond_1
    const/4 v1, 0x0

    sget-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->q:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method static synthetic f()V
    .locals 0

    .prologue
    .line 419
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->k()V

    return-void
.end method

.method private static f(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 492
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->p:Lnet/metaps/sdk/FeaturedAppDialogListener;

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Lnet/metaps/sdk/v;

    invoke-direct {v0, p0}, Lnet/metaps/sdk/v;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 499
    :cond_0
    return-void
.end method

.method static synthetic g()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    return-object v0
.end method

.method private static g(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 506
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->p:Lnet/metaps/sdk/FeaturedAppDialogListener;

    if-eqz v0, :cond_0

    .line 507
    new-instance v0, Lnet/metaps/sdk/h;

    invoke-direct {v0, p0}, Lnet/metaps/sdk/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 513
    :cond_0
    return-void
.end method

.method static synthetic h()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->i:Landroid/app/Dialog;

    return-object v0
.end method

.method private static h(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 520
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->p:Lnet/metaps/sdk/FeaturedAppDialogListener;

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Lnet/metaps/sdk/i;

    invoke-direct {v0, p0}, Lnet/metaps/sdk/i;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 527
    :cond_0
    return-void
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lnet/metaps/sdk/FeaturedAppDialog;->o:I

    return v0
.end method

.method private static i(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 534
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->p:Lnet/metaps/sdk/FeaturedAppDialogListener;

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Lnet/metaps/sdk/j;

    invoke-direct {v0, p0}, Lnet/metaps/sdk/j;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 541
    :cond_0
    return-void
.end method

.method static synthetic j()Lnet/metaps/sdk/FeaturedAppDialogListener;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->p:Lnet/metaps/sdk/FeaturedAppDialogListener;

    return-object v0
.end method

.method private static j(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 548
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->p:Lnet/metaps/sdk/FeaturedAppDialogListener;

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Lnet/metaps/sdk/k;

    invoke-direct {v0, p0}, Lnet/metaps/sdk/k;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 555
    :cond_0
    return-void
.end method

.method private static k()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 422
    :try_start_0
    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->i:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    if-eqz v1, :cond_4

    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->p:Lnet/metaps/sdk/FeaturedAppDialogListener;

    if-eqz v1, :cond_4

    .line 423
    :cond_0
    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    sput v1, Lnet/metaps/sdk/FeaturedAppDialog;->n:I

    .line 424
    sget v1, Lnet/metaps/sdk/FeaturedAppDialog;->n:I

    if-eq v1, v2, :cond_2

    sget v1, Lnet/metaps/sdk/FeaturedAppDialog;->n:I

    .line 425
    :goto_0
    sget v1, Lnet/metaps/sdk/FeaturedAppDialog;->n:I

    if-eq v1, v2, :cond_3

    .line 426
    sget v0, Lnet/metaps/sdk/FeaturedAppDialog;->n:I

    .line 435
    :cond_1
    :goto_1
    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 436
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :goto_2
    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_1
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 442
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 446
    return-void

    .line 424
    :cond_2
    :try_start_2
    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0

    .line 428
    :cond_3
    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_1

    .line 431
    const/4 v0, 0x0

    goto :goto_1

    .line 438
    :cond_4
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->m:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->k(Landroid/app/Activity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 440
    :catchall_0
    move-exception v0

    .line 442
    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_3
    sget-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->l:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 442
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 445
    throw v0

    .line 442
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private static k(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 561
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->p:Lnet/metaps/sdk/FeaturedAppDialogListener;

    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Lnet/metaps/sdk/l;

    invoke-direct {v0, p0}, Lnet/metaps/sdk/l;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 568
    :cond_0
    return-void
.end method

.method public static final prepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "endUserId"
    .parameter "scenario"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/sdk/UninitializedException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lnet/metaps/sdk/Factory;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lnet/metaps/sdk/UninitializedException;

    const-string v1, "Call Factory.initialize(Activity activity, Receiver receiver, String clientId, String appId, String secret, int mode) before !"

    invoke-direct {v0, v1}, Lnet/metaps/sdk/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lnet/metaps/sdk/FeaturedAppDialog;->x:Z

    .line 116
    sput-object p0, Lnet/metaps/sdk/FeaturedAppDialog;->v:Ljava/lang/String;

    .line 117
    sput-object p1, Lnet/metaps/sdk/FeaturedAppDialog;->w:Ljava/lang/String;

    .line 119
    sget-object v0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    sget-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->v:Ljava/lang/String;

    sget-object v3, Lnet/metaps/sdk/FeaturedAppDialog;->w:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    monitor-exit v1

    .line 121
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final show(Landroid/app/Activity;Lnet/metaps/sdk/FeaturedAppDialogListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/sdk/UninitializedException;
        }
    .end annotation

    .prologue
    .line 183
    sget-object v1, Lnet/metaps/sdk/FeaturedAppDialog;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    sput-object p1, Lnet/metaps/sdk/FeaturedAppDialog;->p:Lnet/metaps/sdk/FeaturedAppDialogListener;

    .line 185
    invoke-static {p0}, Lnet/metaps/sdk/FeaturedAppDialog;->f(Landroid/app/Activity;)V

    .line 186
    sget-boolean v0, Lnet/metaps/sdk/FeaturedAppDialog;->x:Z

    if-nez v0, :cond_0

    .line 187
    invoke-static {p0}, Lnet/metaps/sdk/FeaturedAppDialog;->k(Landroid/app/Activity;)V

    .line 188
    new-instance v0, Lnet/metaps/sdk/UninitializedException;

    const-string v2, "Call FeaturedAppDialog.prepare() before !"

    invoke-direct {v0, v2}, Lnet/metaps/sdk/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 191
    :cond_0
    :try_start_1
    sget-boolean v0, Lnet/metaps/sdk/FeaturedAppDialog;->x:Z

    if-eqz v0, :cond_1

    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 192
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->r:Ljava/lang/String;

    invoke-static {v0}, Lnet/metaps/sdk/Factory;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    sget-object v0, Lnet/metaps/sdk/FeaturedAppDialog;->v:Ljava/lang/String;

    sget-object v2, Lnet/metaps/sdk/FeaturedAppDialog;->w:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_1
    invoke-static {p0}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-static {p0}, Lnet/metaps/sdk/FeaturedAppDialog;->d(Landroid/app/Activity;)V

    .line 183
    :goto_0
    monitor-exit v1

    .line 202
    return-void

    .line 199
    :cond_2
    invoke-static {p0}, Lnet/metaps/sdk/FeaturedAppDialog;->h(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
