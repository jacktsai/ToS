.class Lcom/unity3d/player/ac;
.super Landroid/opengl/GLSurfaceView;

# interfaces
.implements Lcom/unity3d/player/UnityGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/ac$a;
    }
.end annotation


# static fields
.field private static b:Z

.field private static c:Z


# instance fields
.field protected a:Z

.field private d:Lcom/unity3d/player/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/ac;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZZIII)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/ac;->d:Lcom/unity3d/player/aa;

    iput-boolean v1, p0, Lcom/unity3d/player/ac;->a:Z

    sput-boolean p4, Lcom/unity3d/player/ac;->b:Z

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/unity3d/player/ac;->c:Z

    iput-boolean p3, p0, Lcom/unity3d/player/ac;->a:Z

    new-instance v0, Lcom/unity3d/player/ac$a;

    invoke-direct {v0, v1}, Lcom/unity3d/player/ac$a;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/ac;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance v0, Lcom/unity3d/player/aa;

    iget-boolean v6, p0, Lcom/unity3d/player/ac;->a:Z

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p8

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/player/aa;-><init>(ZIIIIZ)V

    iput-object v0, p0, Lcom/unity3d/player/ac;->d:Lcom/unity3d/player/aa;

    iget-object v0, p0, Lcom/unity3d/player/ac;->d:Lcom/unity3d/player/aa;

    iget-object v0, v0, Lcom/unity3d/player/aa;->a:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/ac;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    invoke-virtual {p0}, Lcom/unity3d/player/ac;->a()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/ac;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/unity3d/player/ac;->b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/ac;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Unity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_0

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    const/16 v3, 0x3000

    if-eq v2, v3, :cond_0

    const-string v3, "Unity"

    const-string v4, "%s: EGL error: 0x%x"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v1

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/ac;->c:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/unity3d/player/ac;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x3

    :goto_0
    iget-object v1, p0, Lcom/unity3d/player/ac;->d:Lcom/unity3d/player/aa;

    invoke-virtual {v1}, Lcom/unity3d/player/aa;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/ac;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/unity3d/player/ac;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public final a(ZI)Z
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/ac;->d:Lcom/unity3d/player/aa;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/aa;->a(Z)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/unity3d/player/ac;->d:Lcom/unity3d/player/aa;

    invoke-virtual {v1, p2}, Lcom/unity3d/player/aa;->a(I)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
