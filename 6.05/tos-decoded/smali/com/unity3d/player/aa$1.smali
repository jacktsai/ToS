.class final Lcom/unity3d/player/aa$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/aa;


# direct methods
.method constructor <init>(Lcom/unity3d/player/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/aa$1;->a:Lcom/unity3d/player/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/aa$1;->a:Lcom/unity3d/player/aa;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/player/aa;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Lcom/unity3d/player/z;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/aa$1;->a:Lcom/unity3d/player/aa;

    invoke-static {v1}, Lcom/unity3d/player/aa;->a(Lcom/unity3d/player/aa;)Lcom/unity3d/player/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/player/z;->a(Lcom/unity3d/player/z;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    const-string v2, "EGL configuration may not be compatiable with the current surface"

    invoke-static {v1, v2}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lcom/unity3d/player/z;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method
