.class public Lnet/metaps/sdk/WallActivity;
.super Landroid/app/Activity;
.source "WallActivity.java"

# interfaces
.implements Lnet/metaps/util/f;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3

.field private static final d:I = 0x4


# instance fields
.field private e:Landroid/webkit/WebView;

.field private f:Lnet/metaps/sdk/K;

.field private g:Lnet/metaps/sdk/JSController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    .line 40
    iput-object v0, p0, Lnet/metaps/sdk/WallActivity;->f:Lnet/metaps/sdk/K;

    .line 41
    iput-object v0, p0, Lnet/metaps/sdk/WallActivity;->g:Lnet/metaps/sdk/JSController;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->f:Lnet/metaps/sdk/K;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->f:Lnet/metaps/sdk/K;

    invoke-virtual {v0}, Lnet/metaps/sdk/K;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->f:Lnet/metaps/sdk/K;

    invoke-virtual {v0}, Lnet/metaps/sdk/K;->b()V

    .line 261
    invoke-static {}, Lnet/metaps/util/d;->a()V

    .line 266
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/Factory;->runInstallReport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 186
    :try_start_0
    new-instance v0, Lnet/metaps/sdk/a;

    invoke-direct {v0}, Lnet/metaps/sdk/a;-><init>()V

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cuid"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "scn"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v2, "listView"

    invoke-static {v2}, Lnet/metaps/sdk/H;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Lnet/metaps/sdk/a;->c(Ljava/lang/String;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Lnet/metaps/util/ServerConnectionException;->printStackTrace()V

    .line 195
    invoke-virtual {p0}, Lnet/metaps/sdk/WallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lnet/metaps/util/ServerConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    invoke-virtual {v0}, Lnet/metaps/util/DeviceInfoException;->printStackTrace()V

    .line 200
    invoke-virtual {p0}, Lnet/metaps/sdk/WallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lnet/metaps/util/DeviceInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 213
    :try_start_0
    new-instance v0, Lnet/metaps/sdk/a;

    invoke-direct {v0}, Lnet/metaps/sdk/a;-><init>()V

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "aid"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cuid"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "scn"

    invoke-direct {v2, v3, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v2, "detailView"

    invoke-static {v2}, Lnet/metaps/sdk/H;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Lnet/metaps/sdk/a;->c(Ljava/lang/String;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Lnet/metaps/util/ServerConnectionException;->printStackTrace()V

    .line 223
    invoke-virtual {p0}, Lnet/metaps/sdk/WallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lnet/metaps/util/ServerConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 227
    invoke-virtual {v0}, Lnet/metaps/util/DeviceInfoException;->printStackTrace()V

    .line 228
    invoke-virtual {p0}, Lnet/metaps/sdk/WallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lnet/metaps/util/DeviceInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lnet/metaps/sdk/Factory;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 48
    :cond_0
    invoke-virtual {p0}, Lnet/metaps/sdk/WallActivity;->finish()V

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    invoke-static {p0}, Lnet/metaps/sdk/Factory;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    .line 57
    new-instance v0, Lnet/metaps/sdk/JSController;

    iget-object v1, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1}, Lnet/metaps/sdk/JSController;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lnet/metaps/sdk/WallActivity;->g:Lnet/metaps/sdk/JSController;

    .line 58
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setId(I)V

    .line 59
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Metaps SDK ver"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "2.1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 61
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lnet/metaps/sdk/J;

    invoke-direct {v1, p0}, Lnet/metaps/sdk/J;-><init>(Lnet/metaps/sdk/WallActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 70
    new-instance v0, Lnet/metaps/sdk/K;

    iget-object v1, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1}, Lnet/metaps/sdk/K;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lnet/metaps/sdk/WallActivity;->f:Lnet/metaps/sdk/K;

    .line 71
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lnet/metaps/sdk/WallActivity;->f:Lnet/metaps/sdk/K;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 73
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 74
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lnet/metaps/sdk/WallActivity;->g:Lnet/metaps/sdk/JSController;

    const-string v2, "MetapsJs"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 76
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    .line 77
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    const v2, 0x3f666666

    .line 77
    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    iget-object v1, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-virtual {p0, v0}, Lnet/metaps/sdk/WallActivity;->setContentView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p0}, Lnet/metaps/sdk/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    const-string v1, "aid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string v2, "cuid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string v3, "scn"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 94
    invoke-virtual {p0, v1, v2, v0}, Lnet/metaps/sdk/WallActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0, v2, v0}, Lnet/metaps/sdk/WallActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    :try_start_0
    const-string v0, "optionConfirm"

    invoke-static {v0}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080051

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 123
    const-string v0, "optionRefresh"

    invoke-static {v0}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108007c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 126
    const-string v0, "optionPrevious"

    invoke-static {v0}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080026

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 129
    const-string v0, "optionFinish"

    invoke-static {v0}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080025

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return v5

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    invoke-virtual {p0}, Lnet/metaps/sdk/WallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 134
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 135
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 236
    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 237
    packed-switch p1, :pswitch_data_0

    .line 254
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 240
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 245
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {p0}, Lnet/metaps/sdk/WallActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    invoke-virtual {p0}, Lnet/metaps/sdk/WallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return v1

    .line 145
    :pswitch_0
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/Factory;->runInstallReport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 158
    :pswitch_3
    invoke-virtual {p0}, Lnet/metaps/sdk/WallActivity;->finish()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 104
    invoke-static {}, Lnet/metaps/util/d;->a()V

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 110
    invoke-static {}, Lnet/metaps/util/d;->a()V

    .line 111
    invoke-static {p0}, Lnet/metaps/sdk/Factory;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lnet/metaps/sdk/WallActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 115
    :cond_0
    return-void
.end method
