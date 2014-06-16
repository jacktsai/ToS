.class public Lcom/unity3d/player/UnityPlayer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/unity3d/player/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/UnityPlayer$a;
    }
.end annotation


# static fields
.field public static currentActivity:Landroid/app/Activity;

.field private static v:Z


# instance fields
.field private A:I

.field private B:I

.field private final C:Lcom/unity3d/player/w;

.field private D:Ljava/lang/String;

.field private E:Landroid/net/NetworkInfo;

.field private F:Landroid/os/Bundle;

.field private G:Ljava/util/List;

.field private H:Lcom/unity3d/player/ae;

.field private I:Landroid/content/BroadcastReceiver;

.field private J:Landroid/widget/ProgressBar;

.field private K:Ljava/lang/Runnable;

.field private L:Ljava/lang/Runnable;

.field private M:F

.field private N:F

.field private O:Landroid/content/BroadcastReceiver;

.field private P:Z

.field private Q:I

.field private R:Z

.field a:Lcom/unity3d/player/x;

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Lcom/unity3d/player/o;

.field private final f:Lcom/unity3d/player/y;

.field private g:Z

.field private h:Lcom/unity3d/player/ad;

.field private i:Landroid/os/Bundle;

.field private j:Landroid/content/SharedPreferences;

.field private k:Landroid/content/ContextWrapper;

.field private l:Z

.field private m:Lcom/unity3d/player/UnityGL;

.field private n:Lcom/unity3d/player/v;

.field private o:Landroid/os/PowerManager$WakeLock;

.field private p:Landroid/os/PowerManager$WakeLock;

.field private q:Landroid/os/PowerManager$WakeLock;

.field private r:Landroid/hardware/SensorManager;

.field private s:Landroid/view/WindowManager;

.field private t:Lorg/fmod/FMODAudioDevice;

.field private u:Landroid/os/Vibrator;

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v0, Lcom/unity3d/player/ab;

    invoke-direct {v0}, Lcom/unity3d/player/ab;-><init>()V

    invoke-virtual {v0}, Lcom/unity3d/player/ab;->a()Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/UnityPlayer;->v:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->b:Z

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->c:Z

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->g:Z

    new-instance v1, Lcom/unity3d/player/ad;

    invoke-direct {v1}, Lcom/unity3d/player/ad;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    iput-boolean v3, p0, Lcom/unity3d/player/UnityPlayer;->x:Z

    iput v4, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    iput v4, p0, Lcom/unity3d/player/UnityPlayer;->B:I

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/net/NetworkInfo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->G:Ljava/util/List;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/x;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->I:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->J:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$3;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$3;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->K:Ljava/lang/Runnable;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$4;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$4;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->L:Ljava/lang/Runnable;

    iput v2, p0, Lcom/unity3d/player/UnityPlayer;->M:F

    iput v2, p0, Lcom/unity3d/player/UnityPlayer;->N:F

    new-instance v1, Lcom/unity3d/player/UnityPlayer$19;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$19;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->O:Landroid/content/BroadcastReceiver;

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    iput v3, p0, Lcom/unity3d/player/UnityPlayer;->Q:I

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->R:Z

    new-instance v1, Lcom/unity3d/player/y;

    invoke-direct {v1, p0}, Lcom/unity3d/player/y;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/y;

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    :try_start_0
    const-string v1, "android.app.NativeActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/unity3d/player/t;

    invoke-direct {v0, p1}, Lcom/unity3d/player/t;-><init>(Landroid/content/ContextWrapper;)V

    :cond_0
    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/o;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/os/Bundle;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "com.unity3d.player.UnityPlayerActivity"

    aput-object v2, v0, v4

    const-string v2, "com.unity3d.player.UnityPlayerNativeActivity"

    aput-object v2, v0, v3

    const/4 v2, 0x2

    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v0}, Lcom/unity3d/player/UnityPlayerProxyActivity;->copyPlayerPrefs(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v1, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->a()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/content/pm/ApplicationInfo;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeFile(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->m()V

    new-instance v0, Lcom/unity3d/player/w;

    invoke-direct {v0, p1, p0}, Lcom/unity3d/player/w;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static native UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static a(Landroid/view/MotionEvent;)I
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/u;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/u;->m:Lcom/unity3d/player/m;

    invoke-interface {v0, p0}, Lcom/unity3d/player/m;->a(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->J:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/ae;)Lcom/unity3d/player/ae;
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->H:Lcom/unity3d/player/ae;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x10016

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    const/16 v2, 0x400

    new-array v5, v2, [B

    move v2, v0

    :goto_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v2

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v2, v1

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v2, v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Android/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 9

    const/4 v7, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "bin/Data/settings.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v1, v2

    move-object v3, v2

    :goto_0
    if-eq v0, v7, :cond_7

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    move-object v3, v2

    goto :goto_2

    :cond_4
    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "integer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    :goto_3
    move-object v1, v2

    goto :goto_2

    :cond_6
    const-string v0, "string"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to locate player settings. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->b()V

    :cond_7
    return-void

    :cond_8
    :try_start_1
    const-string v0, "bool"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_9
    const-string v0, "float"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private a(IZ)V
    .locals 12

    const/16 v8, 0x8

    const/16 v3, 0x1a

    const/4 v11, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->w:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_0

    iput-boolean v11, p0, Lcom/unity3d/player/UnityPlayer;->g:Z

    :cond_0
    const-string v0, "power"

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v2, "Unity-ProjectRequestedWakeLock"

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->o:Landroid/os/PowerManager$WakeLock;

    const-string v2, "Unity-VideoPlayerWakeLock"

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->p:Landroid/os/PowerManager$WakeLock;

    const-string v2, "Unity-StartupWakeLock"

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v11}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->c()V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->initJni()V

    new-instance v0, Lcom/unity3d/player/PlayerPrefs;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->j:Landroid/content/SharedPreferences;

    invoke-direct {v0, v2}, Lcom/unity3d/player/PlayerPrefs;-><init>(Landroid/content/SharedPreferences;)V

    const-class v0, Lcom/unity3d/player/WWW;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeInitWWW(Ljava/lang/Class;)V

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "blaze"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "kindle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/unity3d/player/v;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-direct {v0, v2}, Lcom/unity3d/player/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/y;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    invoke-virtual {v0, v2}, Lcom/unity3d/player/y;->a(Landroid/view/View;)V

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/u;->d:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unity3d/player/u;->k:Lcom/unity3d/player/l;

    invoke-interface {v0, p0}, Lcom/unity3d/player/l;->a(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeSetDefaultDisplay(Landroid/view/Display;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    if-nez v0, :cond_4

    new-instance v0, Lcom/unity3d/player/UnityPlayer$24;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    sget-boolean v5, Lcom/unity3d/player/r;->a:Z

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    const-string v4, "32bit_display"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    const-string v4, "24bit_depth"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v7, 0x18

    :goto_0
    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    const-string v4, "24bit_depth"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    const-string v4, "default_aa"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lcom/unity3d/player/UnityPlayer$24;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;IZZZIIILandroid/view/View;)V

    sget-boolean v1, Lcom/unity3d/player/u;->d:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/unity3d/player/u;->k:Lcom/unity3d/player/l;

    invoke-interface {v1, v0, v11}, Lcom/unity3d/player/l;->a(Landroid/opengl/GLSurfaceView;Z)V

    :cond_3
    invoke-virtual {v0, v11}, Lcom/unity3d/player/ac;->setFocusable(Z)V

    invoke-virtual {v0, v11}, Lcom/unity3d/player/ac;->setFocusableInTouchMode(Z)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    :cond_4
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0, p0}, Lcom/unity3d/player/UnityGL;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->d()V

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "splash_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v2, Lcom/unity3d/player/UnityPlayer$25;

    invoke-direct {v2, p0, p1, v0}, Lcom/unity3d/player/UnityPlayer$25;-><init>(Lcom/unity3d/player/UnityPlayer;II)V

    invoke-interface {v1, v2}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeSetExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/o;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/o;

    invoke-interface {v0}, Lcom/unity3d/player/o;->a()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/unity3d/player/UnityPlayer;->nativeEnableTouchpad(FF)V

    :cond_5
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    invoke-virtual {p0, v11}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void

    :cond_6
    const/16 v7, 0x10

    goto :goto_0

    :cond_7
    move v8, v1

    goto :goto_1
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    const-string v0, "main"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/NativeLoader;->load(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/player/ad;->a()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "Unable to load libraries from libmain.so"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->b()V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeSetMousePosition(FF)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayer;->nativeSetMouseDelta(FFF)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IFFIJI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/unity3d/player/UnityPlayer;->nativeTouch(IFFIJI)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeInit(II)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayer;->nativeSetJoystickPosition(IIF)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IIZIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/unity3d/player/UnityPlayer;->nativeKeyState(IIZIII)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;I[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/player/UnityPlayer;->nativeVideoFrameCallback(I[BII)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeKeysPressed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeFocusChanged(Z)V

    return-void
.end method

.method static a(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;Z)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const-string v1, "Unable to acquire %s wake-lock. Make sure \'android.permission.WAKE_LOCK\' has been set in the manifest."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Unable to acquire/release %s wake-lock. Make sure \'android.permission.WAKE_LOCK\' has been set in the manifest."

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    :try_start_1
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    const-string v0, "android.permission.WAKE_LOCK"

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "startup"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->q:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;Z)V

    :cond_0
    return-void
.end method

.method private static a(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;I)Z
    .locals 9

    const/4 v8, 0x1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-eqz v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v1, v1, 0x8

    if-ne p2, v1, :cond_2

    and-int/lit16 v6, v0, 0xff

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/unity3d/player/UnityPlayer;->M:F

    iget v5, p0, Lcom/unity3d/player/UnityPlayer;->N:F

    sget-boolean v0, Lcom/unity3d/player/u;->e:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/unity3d/player/u;->l:Lcom/unity3d/player/k;

    invoke-interface {v0, p1, p2}, Lcom/unity3d/player/k;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    :goto_2
    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/MotionEvent;)I

    new-instance v0, Lcom/unity3d/player/UnityPlayer$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/player/UnityPlayer$9;-><init>(Lcom/unity3d/player/UnityPlayer;FFFFIF)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    iput v2, p0, Lcom/unity3d/player/UnityPlayer;->M:F

    iput v3, p0, Lcom/unity3d/player/UnityPlayer;->N:F

    move v0, v8

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private a(Landroid/view/MotionEvent;II)Z
    .locals 11

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v10, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1, p3, v9}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    invoke-virtual {p1, p3, v9}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    move-object v0, p0

    move v1, p3

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer;->dispatchTouchEvent(IIIFFJI)Z

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    move-object v0, p0

    move v1, p3

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer;->dispatchTouchEvent(IIIFFJI)Z

    const/4 v0, 0x1

    return v0
.end method

.method private static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/Android/obb/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "main."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".obb"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "patch."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".obb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-array v0, v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->g()V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetInputString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetMouseButton(IZ)V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    const-string v1, "Not running Unity from an Activity; ignored..."

    invoke-static {v0, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    const-string v0, "video"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->p:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;Z)V

    return-void
.end method

.method private b(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->j()Z

    move-result v0

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->kill()V

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    move v8, v4

    goto :goto_0

    :cond_2
    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-ne p1, v0, :cond_4

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->a(ILandroid/view/KeyEvent;)Z

    move-result v8

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const/16 p1, 0x65

    move v2, p1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    move v4, v8

    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    new-instance v0, Lcom/unity3d/player/UnityPlayer$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/player/UnityPlayer$7;-><init>(Lcom/unity3d/player/UnityPlayer;IIZIII)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    move v2, p1

    goto :goto_1
.end method

.method private b(Landroid/view/MotionEvent;I)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/unity3d/player/u;->e:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unity3d/player/u;->l:Lcom/unity3d/player/k;

    invoke-interface {v1, p1}, Lcom/unity3d/player/k;->a(Landroid/view/MotionEvent;)[Lcom/unity3d/player/k$a;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/UnityPlayer$10;

    invoke-direct {v2, p0, v1}, Lcom/unity3d/player/UnityPlayer$10;-><init>(Lcom/unity3d/player/UnityPlayer;[Lcom/unity3d/player/k$a;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/unity3d/player/s;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/unity3d/player/s;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/unity3d/player/s;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeForwardEventsToDalvik(Z)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->f()V

    return-void
.end method

.method private c(Z)V
    .locals 7

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->Q:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->Q:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->Q:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->Q:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/unity3d/player/UnityPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    return p1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/a;

    invoke-virtual {v0}, Lcom/unity3d/player/a;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->b(Z)V

    return-void
.end method

.method private d(Z)V
    .locals 4

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->R:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativePause()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/a;

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to initialize camera: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/player/a;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeResume()V

    return-void
.end method

.method static synthetic f(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/y;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/y;

    return-object v0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    iget v1, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/v;->a(II)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/unity3d/player/UnityPlayer;)I
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeActivityIndicatorStyle()I

    move-result v0

    return v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeDone()V

    return-void
.end method

.method static synthetic h(Lcom/unity3d/player/UnityPlayer;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->J:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private h()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->H:Lcom/unity3d/player/ae;

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->b(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->H:Lcom/unity3d/player/ae;

    invoke-virtual {v0}, Lcom/unity3d/player/ae;->onResume()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/ad;->c(Z)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->e()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0}, Lcom/unity3d/player/UnityGL;->onResume()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->O:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->c(Z)V

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->d(Z)V

    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->e()V

    iput-object v5, p0, Lcom/unity3d/player/UnityPlayer;->D:Ljava/lang/String;

    iput-object v5, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->m()V

    :cond_4
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Lcom/unity3d/player/ac;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/y;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/y;->d(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$28;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$28;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-interface {v0, v1}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    :cond_6
    sget-boolean v0, Lcom/unity3d/player/UnityPlayer;->v:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    if-nez v0, :cond_7

    new-instance v0, Lorg/fmod/FMODAudioDevice;

    invoke-direct {v0}, Lorg/fmod/FMODAudioDevice;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    :cond_7
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->start()V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic i(Lcom/unity3d/player/UnityPlayer;)Landroid/content/ContextWrapper;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hide_status_bar"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeSetTouchDeltaY(F)V

    :cond_1
    return-void
.end method

.method private final native initJni()V
.end method

.method static synthetic j(Lcom/unity3d/player/UnityPlayer;)I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    return v0
.end method

.method private j()V
    .locals 4

    const-string v0, "assets/bin/"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->unityAndroidInit(Ljava/lang/String;Ljava/lang/String;)Z

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    iget v1, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->nativeResize(IIII)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->unityAndroidPrepareGameLoop()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->e()V

    return-void
.end method

.method private static k()V
    .locals 2

    invoke-static {}, Lcom/unity3d/player/ad;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/unity3d/player/NativeLoader;->unload()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "Unable to unload libraries from libmain.so"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/unity3d/player/ad;->b()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->c:Z

    return v0
.end method

.method private l()Z
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic l(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    return v0
.end method

.method private m()V
    .locals 6

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    const-string v1, "useObb"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v3}, Lcom/unity3d/player/UnityPlayer;->nativeFile(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic m(Lcom/unity3d/player/UnityPlayer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeSetInputCanceled(Z)V

    return-void
.end method

.method static synthetic n(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSoftInputClosed()V

    return-void
.end method

.method private final native nativeActivityIndicatorStyle()I
.end method

.method private final native nativeDone()V
.end method

.method private final native nativeEnableTouchpad(FF)V
.end method

.method private final native nativeFile(Ljava/lang/String;)V
.end method

.method private final native nativeFocusChanged(Z)V
.end method

.method private final native nativeGetGLContext()Ljava/lang/String;
.end method

.method private final native nativeGetGLScreen()Ljava/lang/String;
.end method

.method private final native nativeGetLicensePolicy()I
.end method

.method private final native nativeInit(II)V
.end method

.method private final native nativeInitWWW(Ljava/lang/Class;)V
.end method

.method private final native nativeIsAutorotationOn()Z
.end method

.method private final native nativeJoyButtonState(IIZ)V
.end method

.method private final native nativeKeyState(IIZIII)V
.end method

.method private final native nativeKeysPressed(Ljava/lang/String;)V
.end method

.method private final native nativePause()Z
.end method

.method private final native nativeRecreateGfxState()V
.end method

.method private final native nativeRender()Z
.end method

.method private final native nativeRequested32bitDisplayBuffer()Z
.end method

.method private final native nativeRequestedAA()I
.end method

.method private final native nativeResize(IIII)V
.end method

.method private final native nativeResume()V
.end method

.method private final native nativeSetDefaultDisplay(Landroid/view/Display;)V
.end method

.method private final native nativeSetExtras(Landroid/os/Bundle;)V
.end method

.method private final native nativeSetInputCanceled(Z)V
.end method

.method private final native nativeSetInputString(Ljava/lang/String;)V
.end method

.method private final native nativeSetJoystickPosition(IIF)V
.end method

.method private final native nativeSetMouseButton(IZ)V
.end method

.method private final native nativeSetMouseDelta(FFF)V
.end method

.method private final native nativeSetMousePosition(FF)V
.end method

.method private final native nativeSetTouchDeltaY(F)V
.end method

.method private final native nativeSoftInputClosed()V
.end method

.method private final native nativeTouch(IFFIJI)V
.end method

.method private final native nativeVideoFrameCallback(I[BII)V
.end method

.method static synthetic o(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/ae;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->H:Lcom/unity3d/player/ae;

    return-object v0
.end method

.method private final native unityAndroidInit(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private final native unityAndroidPrepareGameLoop()V
.end method


# virtual methods
.method protected Location_IsServiceEnabledByUser()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->a()Z

    move-result v0

    return v0
.end method

.method protected Location_SetDesiredAccuracy(F)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/w;->b(F)V

    return-void
.end method

.method protected Location_SetDistanceFilter(F)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/w;->a(F)V

    return-void
.end method

.method protected Location_StartUpdatingLocation()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->b()V

    return-void
.end method

.method protected Location_StopUpdatingLocation()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->c()V

    return-void
.end method

.method protected closeCamera(I)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/a;

    invoke-virtual {v0}, Lcom/unity3d/player/a;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/a;->c()V

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->G:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->H:Lcom/unity3d/player/ae;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->H:Lcom/unity3d/player/ae;

    invoke-virtual {v0}, Lcom/unity3d/player/ae;->updateVideoLayout()V

    :cond_2
    return-void
.end method

.method protected dispatchTouchEvent(IIIFFJI)Z
    .locals 9

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-nez v0, :cond_1

    and-int/lit16 v5, p2, 0xff

    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    if-ne p1, v0, :cond_2

    :goto_1
    new-instance v0, Lcom/unity3d/player/UnityPlayer$8;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move-wide v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer$8;-><init>(Lcom/unity3d/player/UnityPlayer;IFFIJI)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_1
.end method

.method protected enableSensorCompensation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iput-boolean p1, v0, Lcom/unity3d/player/w;->a:Z

    return-void
.end method

.method protected forwardMotionEventToDalvik(JJII[I[FIFFIIIII[J[F)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/o;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/o;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-interface/range {v1 .. v19}, Lcom/unity3d/player/o;->a(JJII[I[FIFFIIIII[J[F)V

    :cond_0
    return-void
.end method

.method protected getCacheDir()Ljava/lang/String;
    .locals 2

    const-string v0, "/cache"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraOrientation(I)I
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    invoke-interface {v0, p1}, Lcom/unity3d/player/j;->c(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getConnectedJoysticks()[I
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/u;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/u;->l:Lcom/unity3d/player/k;

    invoke-interface {v0}, Lcom/unity3d/player/k;->a()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDeviceOrientation()I
    .locals 8

    const/16 v5, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-ge v3, v0, :cond_2

    move v0, v1

    :goto_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Amazon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "KFTT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "KFJWI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "KFJWA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v3, v1

    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_4

    const/16 v4, 0x8

    :goto_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v5, :cond_5

    :goto_3
    if-eqz v3, :cond_b

    move v3, v2

    move v2, v4

    :goto_4
    if-nez v6, :cond_6

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    :goto_5
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    move v5, v1

    goto :goto_3

    :cond_6
    if-ne v6, v1, :cond_8

    if-eqz v0, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v5

    goto :goto_5

    :cond_8
    const/4 v2, 0x2

    if-ne v6, v2, :cond_a

    if-eqz v0, :cond_9

    move v1, v3

    goto :goto_5

    :cond_9
    move v1, v5

    goto :goto_5

    :cond_a
    const/4 v2, 0x3

    if-ne v6, v2, :cond_1

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_5

    :cond_b
    move v3, v4

    goto :goto_4
.end method

.method protected getDeviceUniqueIdentifier()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDisplaySize()[I
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    :try_start_0
    const-class v0, Landroid/view/Display;

    const-string v2, "getRawHeight"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-class v0, Landroid/view/Display;

    const-string v2, "getRawWidth"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_2

    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v6

    const/4 v1, 0x1

    aput v0, v2, v1

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/unity3d/player/u;->g:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/player/u;->n:Lcom/unity3d/player/n;

    invoke-interface {v0, v3, v1}, Lcom/unity3d/player/n;->a(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    :goto_3
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_3

    :cond_2
    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_2
.end method

.method protected getFilesDir()Ljava/lang/String;
    .locals 2

    const-string v0, "/files"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGyroUpdateDelay()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->Q:I

    return v0
.end method

.method protected getInternetReachability()I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/net/NetworkInfo;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/net/NetworkInfo;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x5

    const-string v2, "android.permission.ACCESS_NETWORK_STATE not available?"

    invoke-static {v0, v2}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method protected getIsGyroAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.gyroscope"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getIsGyroEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    return v0
.end method

.method protected getJoystickAxes(I)[I
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/u;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/u;->l:Lcom/unity3d/player/k;

    invoke-interface {v0, p1}, Lcom/unity3d/player/k;->b(I)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getJoystickName(I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/u;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/u;->l:Lcom/unity3d/player/k;

    invoke-interface {v0, p1}, Lcom/unity3d/player/k;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNumCameras()I
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    invoke-interface {v0}, Lcom/unity3d/player/j;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    goto :goto_0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenDPI()F
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected getScreenOrientationAngle()I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->s:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method protected getScreenTimeout()I
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x3a98

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getSettings()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Landroid/os/Bundle;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected hasWakeLock()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->o:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method protected hideSoftInput()V
    .locals 1

    new-instance v0, Lcom/unity3d/player/UnityPlayer$14;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$14;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected hideVideoPlayer()V
    .locals 1

    new-instance v0, Lcom/unity3d/player/UnityPlayer$20;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$20;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(IZ)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/unity3d/player/ad;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Failure to initialize!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/unity3d/player/UnityPlayer$1;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$1;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Your hardware does not support this application, sorry!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Old Android OS detected!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/unity3d/player/UnityPlayer$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$11;-><init>(Lcom/unity3d/player/UnityPlayer;IZ)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "This application requires at least Android OS version 2.2 on Samsung devices. Your device seems to be running an older OS version.\nPlease contact your carrier or the hardware vendor and ask them how to install a more recent version. It is a simple process that your provider\'s customer service can help you with."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->a(IZ)V

    goto :goto_0
.end method

.method protected initCamera(IIII)[I
    .locals 5

    new-instance v1, Lcom/unity3d/player/a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/unity3d/player/a;-><init>(IIII)V

    :try_start_0
    invoke-virtual {v1, p0}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a$a;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/unity3d/player/a;->b()Landroid/hardware/Camera$Size;

    move-result-object v2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    aput v4, v0, v3

    const/4 v3, 0x1

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    aput v2, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to initialize camera: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/unity3d/player/a;->c()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCameraFrontFacing(I)Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    invoke-interface {v0, p1}, Lcom/unity3d/player/j;->b(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCompassAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.compass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isCompassEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->R:Z

    return v0
.end method

.method protected isFinishing()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->w:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected isSensorCompensationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    iget-boolean v0, v0, Lcom/unity3d/player/w;->a:Z

    return v0
.end method

.method protected kill()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected loadLibrary(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    goto :goto_0
.end method

.method final native nativeAttitude(FFFFJ)V
.end method

.method final native nativeCompass(FFFFD)V
.end method

.method final native nativeDeviceOrientation(I)V
.end method

.method final native nativeForwardEventsToDalvik(Z)V
.end method

.method final native nativeGravity(FFFJ)V
.end method

.method final native nativeGyro(FFFJ)V
.end method

.method final native nativeJoystickRemoved()V
.end method

.method final native nativeLinearAcc(FFFJ)V
.end method

.method final native nativeSensor(FFFJ)V
.end method

.method protected native nativeSetLocation(FFFFDF)V
.end method

.method protected native nativeSetLocationStatus(I)V
.end method

.method public onCameraFrame(Lcom/unity3d/player/a;[B)V
    .locals 6

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/unity3d/player/a;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/unity3d/player/a;->b()Landroid/hardware/Camera$Size;

    move-result-object v4

    new-instance v0, Lcom/unity3d/player/UnityPlayer$17;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/player/UnityPlayer$17;-><init>(Lcom/unity3d/player/UnityPlayer;I[BLandroid/hardware/Camera$Size;Lcom/unity3d/player/a;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRender()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->j()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->x:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->x:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->j()V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Lcom/unity3d/player/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Lcom/unity3d/player/ac;

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRequested32bitDisplayBuffer()Z

    move-result v1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRequestedAA()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/ac;->a(ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/unity3d/player/UnityPlayer$2;

    invoke-direct {v1, p0, v0}, Lcom/unity3d/player/UnityPlayer$2;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/ac;)V

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->k()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->f()V

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->j()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Lcom/unity3d/player/UnityPlayer$5;

    invoke-direct {v0, p0, p3}, Lcom/unity3d/player/UnityPlayer$5;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/view/KeyEvent;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/unity3d/player/UnityPlayer$6;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/unity3d/player/UnityPlayer$6;-><init>(Lcom/unity3d/player/UnityPlayer;ILandroid/view/KeyEvent;I)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->B:I

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->B:I

    if-eq v0, p3, :cond_2

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/u;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/unity3d/player/u;->k:Lcom/unity3d/player/l;

    invoke-interface {v0}, Lcom/unity3d/player/l;->a()Z

    move-result v0

    :goto_0
    iget v1, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer;->B:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->setScreenSize(IIZ)V

    iget p2, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    iget p3, p0, Lcom/unity3d/player/UnityPlayer;->B:I

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_1
    iput p2, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    iput p3, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/unity3d/player/UnityPlayer;->nativeResize(IIII)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->i()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, p3

    move v1, p2

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRecreateGfxState()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/16 v1, 0x1002

    const/4 v4, 0x0

    const/16 v5, 0x4002

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    invoke-interface {v0, p1}, Lcom/unity3d/player/j;->a(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_1
    invoke-static {v0, v5}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/unity3d/player/u;->f:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    move v7, v4

    move v6, v4

    :goto_3
    if-ge v7, v8, :cond_c

    if-eqz v2, :cond_e

    sget-boolean v4, Lcom/unity3d/player/u;->f:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/unity3d/player/u;->m:Lcom/unity3d/player/m;

    invoke-interface {v4, p1, v7}, Lcom/unity3d/player/m;->a(Landroid/view/MotionEvent;I)I

    move-result v4

    :goto_4
    const/4 v9, 0x4

    if-eq v4, v9, :cond_2

    const/4 v9, 0x2

    if-eq v4, v9, :cond_2

    if-ne v0, v5, :cond_8

    :cond_2
    move v4, v5

    :cond_3
    :goto_5
    invoke-static {v4, v1}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v9

    if-nez v9, :cond_4

    const v9, 0x100008

    invoke-static {v4, v9}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_4
    invoke-direct {p0, p1, v4, v7}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/MotionEvent;II)Z

    move-result v4

    or-int/2addr v4, v6

    :goto_6
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v4

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    move v4, v3

    goto :goto_4

    :cond_8
    xor-int/lit16 v4, v0, 0x4002

    and-int/lit16 v9, v4, 0xff

    if-nez v9, :cond_3

    and-int/lit16 v9, v0, 0xff

    or-int/2addr v4, v9

    goto :goto_5

    :cond_9
    const/16 v9, 0x2002

    invoke-static {v4, v9}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {v4, v5}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    invoke-direct {p0, p1, v7}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/MotionEvent;I)Z

    move-result v4

    or-int/2addr v4, v6

    goto :goto_6

    :cond_b
    const/16 v9, 0x10

    invoke-static {v4, v9}, Lcom/unity3d/player/UnityPlayer;->a(II)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct {p0, p1, v7}, Lcom/unity3d/player/UnityPlayer;->b(Landroid/view/MotionEvent;I)Z

    move-result v4

    or-int/2addr v4, v6

    goto :goto_6

    :cond_c
    move v3, v6

    goto/16 :goto_0

    :cond_d
    move v4, v6

    goto :goto_6

    :cond_e
    move v4, v0

    goto :goto_5
.end method

.method protected openURL(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public pause()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->H:Lcom/unity3d/player/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->H:Lcom/unity3d/player/ae;

    invoke-virtual {v0}, Lcom/unity3d/player/ae;->onPause()V

    invoke-direct {p0, v4}, Lcom/unity3d/player/UnityPlayer;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0, v4}, Lcom/unity3d/player/ad;->c(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/ad;->b(Z)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->d()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v2, Lcom/unity3d/player/UnityPlayer$26;

    invoke-direct {v2, p0, v0}, Lcom/unity3d/player/UnityPlayer$26;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, v2}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    :goto_1
    const-wide/16 v1, 0xa

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->O:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Lcom/unity3d/player/ac;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Lcom/unity3d/player/v;

    invoke-virtual {v0}, Lcom/unity3d/player/v;->a()V

    :cond_4
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->f:Lcom/unity3d/player/y;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/y;->e(Landroid/view/View;)V

    :cond_5
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0}, Lcom/unity3d/player/UnityGL;->onPause()V

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-nez v0, :cond_6

    invoke-direct {p0, v4}, Lcom/unity3d/player/UnityPlayer;->c(Z)V

    invoke-direct {p0, v4}, Lcom/unity3d/player/UnityPlayer;->d(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->r:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_6
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->C:Lcom/unity3d/player/w;

    invoke-virtual {v0}, Lcom/unity3d/player/w;->d()V

    invoke-virtual {p0, v4}, Lcom/unity3d/player/UnityPlayer;->setWakeLock(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v2, Lcom/unity3d/player/UnityPlayer$27;

    invoke-direct {v2, p0, v0}, Lcom/unity3d/player/UnityPlayer$27;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, v2}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method protected queueEvent(Lcom/unity3d/player/UnityPlayer$a;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0, p1}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$23;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/player/UnityPlayer$23;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->w:Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->I:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->I:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/unity3d/player/ad;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->removeAllViews()V

    :cond_2
    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->k()V

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->kill()V

    return-void
.end method

.method protected reportSoftInputStr(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->hideSoftInput()V

    :cond_0
    new-instance v0, Lcom/unity3d/player/UnityPlayer$16;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/unity3d/player/UnityPlayer$16;-><init>(Lcom/unity3d/player/UnityPlayer;ZLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 2

    sget-boolean v0, Lcom/unity3d/player/u;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/u;->k:Lcom/unity3d/player/l;

    invoke-interface {v0, p0}, Lcom/unity3d/player/l;->b(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->k()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/player/ad;->b(Z)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->h()V

    return-void
.end method

.method protected setCompassEnabled(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->R:Z

    if-eq v2, p1, :cond_0

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isCompassAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->R:Z

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->d(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->d(Z)V

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->R:Z

    new-instance v0, Lcom/unity3d/player/UnityPlayer$22;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$22;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setGyroEnabled(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->l:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    if-eq v2, p1, :cond_0

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getIsGyroAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->c(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->c(Z)V

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->P:Z

    new-instance v0, Lcom/unity3d/player/UnityPlayer$21;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$21;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setGyroUpdateDelay(I)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/UnityPlayer;->Q:I

    return-void
.end method

.method protected setHideInputField(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->c:Z

    return-void
.end method

.method protected setOrientation(I)V
    .locals 3

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-eq p1, v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_2

    if-eq p1, v2, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected setScreenSize(IIZ)V
    .locals 8

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-nez v1, :cond_0

    const/4 v0, 0x5

    const-string v1, "setScreenSize: Unable to retrieve surface holder"

    invoke-static {v0, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    check-cast v4, Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_2

    :cond_1
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    :cond_2
    move v3, v2

    :goto_1
    if-ne p1, v5, :cond_5

    if-ne p2, v5, :cond_5

    :goto_2
    if-nez v2, :cond_7

    if-eqz v3, :cond_6

    iput v0, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    iput v0, p0, Lcom/unity3d/player/UnityPlayer;->B:I

    :cond_3
    :goto_3
    new-instance v0, Lcom/unity3d/player/UnityPlayer$12;

    move-object v1, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/player/UnityPlayer$12;-><init>(Lcom/unity3d/player/UnityPlayer;ZZLandroid/view/SurfaceView;IIZ)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    move v3, v0

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    iput p1, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    iput p2, p0, Lcom/unity3d/player/UnityPlayer;->B:I

    goto :goto_3

    :cond_7
    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->A:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->B:I

    goto :goto_3
.end method

.method protected setSoftInputStr(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/unity3d/player/UnityPlayer$15;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$15;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setWakeLock(Z)V
    .locals 2

    const-string v0, "project"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->o:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Landroid/os/PowerManager$WakeLock;Z)V

    return-void
.end method

.method protected showSoftInput(Ljava/lang/String;IZZZZLjava/lang/String;)V
    .locals 10

    new-instance v0, Lcom/unity3d/player/UnityPlayer$13;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/unity3d/player/UnityPlayer$13;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showVideoPlayer(Ljava/lang/String;IIIZII)V
    .locals 9

    new-instance v0, Lcom/unity3d/player/UnityPlayer$18;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer$18;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IIIZII)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected startActivityIndicator()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->K:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected stopActivityIndicator()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->L:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected vibrate(I)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x5

    const-string v1, "android.permission.VIBRATE not available?"

    invoke-static {v0, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected vibrationSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Landroid/content/ContextWrapper;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    :cond_0
    sget-boolean v0, Lcom/unity3d/player/u;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/player/u;->k:Lcom/unity3d/player/l;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->u:Landroid/os/Vibrator;

    invoke-interface {v0, v1}, Lcom/unity3d/player/l;->a(Landroid/os/Vibrator;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public windowFocusChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/ad;->a(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/x;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;IZ)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Lcom/unity3d/player/ad;

    invoke-virtual {v0}, Lcom/unity3d/player/ad;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Lcom/unity3d/player/UnityGL;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$29;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/player/UnityPlayer$29;-><init>(Lcom/unity3d/player/UnityPlayer;Z)V

    invoke-interface {v0, v1}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->h()V

    return-void
.end method
