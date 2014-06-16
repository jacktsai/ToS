.class final Lcom/unity3d/player/z;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljavax/microedition/khronos/egl/EGL10;

.field final b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field final c:Ljavax/microedition/khronos/egl/EGLConfig;


# direct methods
.method constructor <init>(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/z;->a:Ljavax/microedition/khronos/egl/EGL10;

    iput-object p2, p0, Lcom/unity3d/player/z;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object p3, p0, Lcom/unity3d/player/z;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
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

    const/4 v3, 0x6

    const-string v4, "%s: EGL error: 0x%x"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v1

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-array v1, v5, [I

    iget-object v2, p0, Lcom/unity3d/player/z;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/unity3d/player/z;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/unity3d/player/z;->c:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v0, v1, v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/z;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const/16 v2, 0x3004

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    const-string v3, "findConfigAttrib: EGL error: 0x%x"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findConfigAttrib ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/z;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v1, v2}, Lcom/unity3d/player/z;->a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    goto :goto_0
.end method

.method final a()Ljava/lang/String;
    .locals 13

    const/4 v12, 0x2

    const/16 v0, 0x3020

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v1

    const/16 v0, 0x3024

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v2

    const/16 v0, 0x3023

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v3

    const/16 v0, 0x3022

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v4

    const/16 v0, 0x3021

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v5

    const/16 v0, 0x3025

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v6

    const/16 v0, 0x3026

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v7

    const/16 v0, 0x3031

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v8

    const/16 v0, 0x30e1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v9

    const/16 v0, 0x30e2

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->a(I)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v5, :cond_0

    const-string v0, "RGB"

    :goto_0
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v5, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x30e3

    if-ne v10, v0, :cond_2

    const-string v0, "[NLZ]"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ge v8, v12, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ge v9, v12, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "RGBA"

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " AAx"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " CSAAx"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method final a(Lcom/unity3d/player/z;)Z
    .locals 5

    const/16 v1, 0x3024

    const/16 v4, 0x3023

    const/16 v3, 0x3022

    const/16 v2, 0x3021

    invoke-virtual {p0, v1}, Lcom/unity3d/player/z;->a(I)I

    move-result v0

    invoke-virtual {p1, v1}, Lcom/unity3d/player/z;->a(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/unity3d/player/z;->a(I)I

    move-result v0

    invoke-virtual {p1, v4}, Lcom/unity3d/player/z;->a(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/unity3d/player/z;->a(I)I

    move-result v0

    invoke-virtual {p1, v3}, Lcom/unity3d/player/z;->a(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/unity3d/player/z;->a(I)I

    move-result v0

    invoke-virtual {p1, v2}, Lcom/unity3d/player/z;->a(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    const/16 v0, 0x25

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "EGL_BUFFER_SIZE"

    aput-object v0, v3, v1

    const-string v0, "EGL_ALPHA_SIZE"

    aput-object v0, v3, v8

    const-string v0, "EGL_BLUE_SIZE"

    aput-object v0, v3, v9

    const/4 v0, 0x3

    const-string v4, "EGL_GREEN_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "EGL_RED_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "EGL_DEPTH_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "EGL_STENCIL_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "EGL_CONFIG_CAVEAT"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, "EGL_CONFIG_ID"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    const-string v4, "EGL_LEVEL"

    aput-object v4, v3, v0

    const/16 v0, 0xa

    const-string v4, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    const-string v4, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v4, v3, v0

    const/16 v0, 0xc

    const-string v4, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v4, v3, v0

    const/16 v0, 0xd

    const-string v4, "EGL_NATIVE_RENDERABLE"

    aput-object v4, v3, v0

    const/16 v0, 0xe

    const-string v4, "EGL_NATIVE_VISUAL_ID"

    aput-object v4, v3, v0

    const/16 v0, 0xf

    const-string v4, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x10

    const-string v4, "EGL_PRESERVED_RESOURCES"

    aput-object v4, v3, v0

    const/16 v0, 0x11

    const-string v4, "EGL_SAMPLES"

    aput-object v4, v3, v0

    const/16 v0, 0x12

    const-string v4, "EGL_SAMPLE_BUFFERS"

    aput-object v4, v3, v0

    const/16 v0, 0x13

    const-string v4, "EGL_SURFACE_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x14

    const-string v4, "EGL_TRANSPARENT_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x15

    const-string v4, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v4, v3, v0

    const/16 v0, 0x16

    const-string v4, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v4, v3, v0

    const/16 v0, 0x17

    const-string v4, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v4, v3, v0

    const/16 v0, 0x18

    const-string v4, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v4, v3, v0

    const/16 v0, 0x19

    const-string v4, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v4, v3, v0

    const/16 v0, 0x1a

    const-string v4, "EGL_MIN_SWAP_INTERVAL"

    aput-object v4, v3, v0

    const/16 v0, 0x1b

    const-string v4, "EGL_MAX_SWAP_INTERVAL"

    aput-object v4, v3, v0

    const/16 v0, 0x1c

    const-string v4, "EGL_LUMINANCE_SIZE"

    aput-object v4, v3, v0

    const/16 v0, 0x1d

    const-string v4, "EGL_ALPHA_MASK_SIZE"

    aput-object v4, v3, v0

    const/16 v0, 0x1e

    const-string v4, "EGL_COLOR_BUFFER_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x1f

    const-string v4, "EGL_RENDERABLE_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x20

    const-string v4, "EGL_CONFORMANT"

    aput-object v4, v3, v0

    const/16 v0, 0x21

    const-string v4, "EGL_COVERAGE_BUFFERS_NV"

    aput-object v4, v3, v0

    const/16 v0, 0x22

    const-string v4, "EGL_COVERAGE_SAMPLES_NV"

    aput-object v4, v3, v0

    const/16 v0, 0x23

    const-string v4, "EGL_DEPTH_ENCODING_NV"

    aput-object v4, v3, v0

    const/16 v0, 0x24

    const-string v4, "EGL_FRAMEBUFFER_TARGET_ANDROID"

    aput-object v4, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    const-string v5, "  %s: %d\n"

    new-array v6, v9, [Ljava/lang/Object;

    aget-object v7, v3, v0

    aput-object v7, v6, v1

    aget v7, v2, v0

    invoke-virtual {p0, v7}, Lcom/unity3d/player/z;->a(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x20t 0x30t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x27t 0x30t 0x0t 0x0t
        0x28t 0x30t 0x0t 0x0t
        0x29t 0x30t 0x0t 0x0t
        0x2at 0x30t 0x0t 0x0t
        0x2bt 0x30t 0x0t 0x0t
        0x2ct 0x30t 0x0t 0x0t
        0x2dt 0x30t 0x0t 0x0t
        0x2et 0x30t 0x0t 0x0t
        0x2ft 0x30t 0x0t 0x0t
        0x30t 0x30t 0x0t 0x0t
        0x31t 0x30t 0x0t 0x0t
        0x32t 0x30t 0x0t 0x0t
        0x33t 0x30t 0x0t 0x0t
        0x34t 0x30t 0x0t 0x0t
        0x37t 0x30t 0x0t 0x0t
        0x36t 0x30t 0x0t 0x0t
        0x35t 0x30t 0x0t 0x0t
        0x39t 0x30t 0x0t 0x0t
        0x3at 0x30t 0x0t 0x0t
        0x3bt 0x30t 0x0t 0x0t
        0x3ct 0x30t 0x0t 0x0t
        0x3dt 0x30t 0x0t 0x0t
        0x3et 0x30t 0x0t 0x0t
        0x3ft 0x30t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x42t 0x30t 0x0t 0x0t
        0xe0t 0x30t 0x0t 0x0t
        0xe1t 0x30t 0x0t 0x0t
        0xe2t 0x30t 0x0t 0x0t
        0x47t 0x31t 0x0t 0x0t
    .end array-data
.end method
