.class Lcom/unity3d/player/aa;
.super Ljava/lang/Object;


# static fields
.field static final synthetic b:Z

.field private static final s:[I

.field private static final t:[I

.field private static final u:[[I


# instance fields
.field final a:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:I

.field private r:Lcom/unity3d/player/z;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/unity3d/player/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/unity3d/player/aa;->b:Z

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unity3d/player/aa;->s:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/unity3d/player/aa;->t:[I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v3, v2, [I

    aput-object v3, v0, v2

    sget-object v2, Lcom/unity3d/player/aa;->t:[I

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/unity3d/player/aa;->s:[I

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/unity3d/player/aa;->s:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/player/aa;->u:[[I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x33t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x33t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(ZIIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unity3d/player/aa$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/aa$1;-><init>(Lcom/unity3d/player/aa;)V

    iput-object v0, p0, Lcom/unity3d/player/aa;->a:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    iput p5, p0, Lcom/unity3d/player/aa;->c:I

    iput-boolean p6, p0, Lcom/unity3d/player/aa;->d:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/player/aa;->a(ZIII)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/aa;)Lcom/unity3d/player/z;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/aa;->r:Lcom/unity3d/player/z;

    return-object v0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Lcom/unity3d/player/z;
    .locals 7

    const/16 v6, 0x18

    const/16 v5, 0x8

    const/4 v4, 0x5

    const/16 v3, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/aa;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Lcom/unity3d/player/z;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x3025

    invoke-virtual {v0, v2}, Lcom/unity3d/player/z;->a(I)I

    move-result v2

    if-le v2, v3, :cond_1

    :cond_0
    iget v2, p0, Lcom/unity3d/player/aa;->n:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/unity3d/player/aa;->p:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/unity3d/player/aa;->p:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/aa;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Lcom/unity3d/player/z;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget v2, p0, Lcom/unity3d/player/aa;->q:I

    if-lez v2, :cond_3

    iget v0, p0, Lcom/unity3d/player/aa;->q:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/unity3d/player/aa;->q:I

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/aa;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Lcom/unity3d/player/z;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/unity3d/player/aa;->q:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iget v2, p0, Lcom/unity3d/player/aa;->n:I

    if-ne v2, v6, :cond_4

    iget v2, p0, Lcom/unity3d/player/aa;->o:I

    if-ne v2, v5, :cond_4

    iput v1, p0, Lcom/unity3d/player/aa;->o:I

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/aa;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Lcom/unity3d/player/z;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_6

    iget v2, p0, Lcom/unity3d/player/aa;->n:I

    if-ne v2, v6, :cond_6

    iput v3, p0, Lcom/unity3d/player/aa;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/aa;->p:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/aa;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Lcom/unity3d/player/z;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v2, 0x3025

    invoke-virtual {v0, v2}, Lcom/unity3d/player/z;->a(I)I

    move-result v2

    if-le v2, v3, :cond_6

    :cond_5
    iput-boolean v1, p0, Lcom/unity3d/player/aa;->p:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/aa;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Lcom/unity3d/player/z;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_9

    iget-boolean v2, p0, Lcom/unity3d/player/aa;->i:Z

    if-eqz v2, :cond_9

    iget v0, p0, Lcom/unity3d/player/aa;->m:I

    if-ne v0, v5, :cond_8

    invoke-direct {p0}, Lcom/unity3d/player/aa;->b()V

    iput v1, p0, Lcom/unity3d/player/aa;->m:I

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/aa;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Lcom/unity3d/player/z;

    move-result-object v0

    :cond_7
    :goto_2
    return-object v0

    :cond_8
    iput-boolean v1, p0, Lcom/unity3d/player/aa;->i:Z

    iput v4, p0, Lcom/unity3d/player/aa;->j:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/player/aa;->k:I

    iput v4, p0, Lcom/unity3d/player/aa;->l:I

    iput v1, p0, Lcom/unity3d/player/aa;->m:I

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/aa;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Lcom/unity3d/player/z;

    move-result-object v0

    :cond_9
    if-nez v0, :cond_7

    new-instance v0, Lcom/unity3d/player/z;

    aget-object v1, p3, v1

    invoke-direct {v0, p1, p2, v1}, Lcom/unity3d/player/z;-><init>(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto :goto_2
.end method

.method private a(ZIII)V
    .locals 2

    const/4 v1, 0x5

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/unity3d/player/aa;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/unity3d/player/aa;->e:Z

    iput p2, p0, Lcom/unity3d/player/aa;->f:I

    iput p3, p0, Lcom/unity3d/player/aa;->g:I

    iput p4, p0, Lcom/unity3d/player/aa;->h:I

    invoke-direct {p0}, Lcom/unity3d/player/aa;->b()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/unity3d/player/aa;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Running on pre-Gingerbread device: DisplayBuffer doesn\'t support 32bits."

    invoke-static {v1, v0}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/aa;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unity3d/player/aa;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Running on pre-Honeycomb device: DisplayBuffer won\'t contain alpha channel."

    invoke-static {v1, v0}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/unity3d/player/aa;->e()Lcom/unity3d/player/z;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/aa;->r:Lcom/unity3d/player/z;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Lcom/unity3d/player/z;
    .locals 12

    const/4 v2, 0x0

    const/16 v11, 0x8

    const/4 v1, 0x1

    array-length v5, p3

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_6

    aget-object v0, p3, v4

    sget-boolean v3, Lcom/unity3d/player/aa;->b:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v3, Lcom/unity3d/player/z;

    invoke-direct {v3, p1, p2, v0}, Lcom/unity3d/player/z;-><init>(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    const/16 v0, 0x3025

    invoke-virtual {v3, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v0

    const/16 v6, 0x3026

    invoke-virtual {v3, v6}, Lcom/unity3d/player/z;->a(I)I

    move-result v6

    const/16 v7, 0x3031

    invoke-virtual {v3, v7}, Lcom/unity3d/player/z;->a(I)I

    move-result v7

    const/16 v8, 0x30e1

    invoke-virtual {v3, v8}, Lcom/unity3d/player/z;->a(I)I

    move-result v8

    const/16 v9, 0x30e2

    invoke-virtual {v3, v9}, Lcom/unity3d/player/z;->a(I)I

    move-result v9

    iget v10, p0, Lcom/unity3d/player/aa;->n:I

    if-lt v0, v10, :cond_5

    iget v10, p0, Lcom/unity3d/player/aa;->o:I

    if-lt v6, v10, :cond_5

    iget v6, p0, Lcom/unity3d/player/aa;->q:I

    if-ge v7, v6, :cond_1

    add-int/lit8 v6, v8, -0x1

    iget v7, p0, Lcom/unity3d/player/aa;->q:I

    if-lt v6, v7, :cond_5

    :cond_1
    const/16 v6, 0x10

    if-ne v0, v6, :cond_2

    iget-boolean v0, p0, Lcom/unity3d/player/aa;->p:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x30e3

    if-ne v9, v0, :cond_5

    :cond_2
    const/16 v0, 0x3147

    invoke-virtual {v3, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    iget-boolean v6, p0, Lcom/unity3d/player/aa;->d:Z

    if-ne v6, v0, :cond_5

    const/16 v0, 0x3024

    invoke-virtual {v3, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v6

    const/16 v0, 0x3023

    invoke-virtual {v3, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v7

    const/16 v0, 0x3022

    invoke-virtual {v3, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v8

    const/16 v0, 0x3021

    invoke-virtual {v3, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v0

    iget v9, p0, Lcom/unity3d/player/aa;->j:I

    if-ne v6, v9, :cond_5

    iget v9, p0, Lcom/unity3d/player/aa;->k:I

    if-ne v7, v9, :cond_5

    iget v9, p0, Lcom/unity3d/player/aa;->l:I

    if-ne v8, v9, :cond_5

    iget v9, p0, Lcom/unity3d/player/aa;->m:I

    if-ne v0, v9, :cond_5

    const/16 v0, 0x303a

    invoke-virtual {v3, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v0

    const/16 v2, 0x3039

    invoke-virtual {v3, v2}, Lcom/unity3d/player/z;->a(I)I

    move-result v2

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    :goto_2
    if-ne v6, v11, :cond_3

    if-ne v7, v11, :cond_3

    if-ne v8, v11, :cond_3

    if-nez v1, :cond_3

    const/4 v0, 0x3

    const-string v1, "This message is harmless: 32bits and selecting config with EGL_BIND_TO_TEXTURE_RGBA = 0"

    invoke-static {v0, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    :cond_3
    move-object v0, v3

    :goto_3
    return-object v0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_2
.end method

.method private b()V
    .locals 4

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v1, 0x8

    iget-boolean v0, p0, Lcom/unity3d/player/aa;->e:Z

    iput-boolean v0, p0, Lcom/unity3d/player/aa;->i:Z

    iget-boolean v0, p0, Lcom/unity3d/player/aa;->e:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/unity3d/player/aa;->j:I

    iget-boolean v0, p0, Lcom/unity3d/player/aa;->e:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/unity3d/player/aa;->k:I

    iget-boolean v0, p0, Lcom/unity3d/player/aa;->e:Z

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput v2, p0, Lcom/unity3d/player/aa;->l:I

    iget-boolean v0, p0, Lcom/unity3d/player/aa;->e:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/unity3d/player/aa;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iput v1, p0, Lcom/unity3d/player/aa;->m:I

    iget v0, p0, Lcom/unity3d/player/aa;->f:I

    iput v0, p0, Lcom/unity3d/player/aa;->n:I

    iget v0, p0, Lcom/unity3d/player/aa;->g:I

    iput v0, p0, Lcom/unity3d/player/aa;->o:I

    iget v0, p0, Lcom/unity3d/player/aa;->h:I

    iput v0, p0, Lcom/unity3d/player/aa;->q:I

    iget v0, p0, Lcom/unity3d/player/aa;->f:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/unity3d/player/aa;->p:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method private static c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Lcom/unity3d/player/z;
    .locals 3

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/unity3d/player/aa;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/unity3d/player/z;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/unity3d/player/z;
    .locals 6

    const/4 v4, 0x0

    sget-object v0, Lcom/unity3d/player/aa;->u:[[I

    iget v1, p0, Lcom/unity3d/player/aa;->c:I

    aget-object v2, v0, v1

    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v4, v5, v4

    if-gtz v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-direct {p0, p1, p2, v3}, Lcom/unity3d/player/aa;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Lcom/unity3d/player/z;

    move-result-object v0

    return-object v0
.end method

.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/aa;->i:Z

    return v0
.end method

.method final a(I)Z
    .locals 3

    iget v0, p0, Lcom/unity3d/player/aa;->h:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/unity3d/player/aa;->q:I

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/unity3d/player/aa;->e:Z

    iget v1, p0, Lcom/unity3d/player/aa;->f:I

    iget v2, p0, Lcom/unity3d/player/aa;->g:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/unity3d/player/aa;->a(ZIII)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a(Z)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/unity3d/player/aa;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/unity3d/player/aa;->e:Z

    if-eq v3, v0, :cond_0

    iget-boolean v3, p0, Lcom/unity3d/player/aa;->i:Z

    if-ne v3, v0, :cond_2

    :cond_0
    move v1, v2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/unity3d/player/aa;->f:I

    iget v3, p0, Lcom/unity3d/player/aa;->g:I

    iget v4, p0, Lcom/unity3d/player/aa;->h:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/unity3d/player/aa;->a(ZIII)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EGLConfigChooser\n\nRequested:\nmReqGlesVersion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/unity3d/player/aa;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmReq32bit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/unity3d/player/aa;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmReqDepthSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/aa;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmReqStencilSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/aa;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmReqAALevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/aa;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nActual\nm32bit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/unity3d/player/aa;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmRedSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/aa;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmGreenSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/aa;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmBlueSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/aa;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmAlphaSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/aa;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmDepthSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/aa;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmStencilSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/aa;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmAALevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/aa;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nSelect default configuration: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/aa;->r:Lcom/unity3d/player/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
