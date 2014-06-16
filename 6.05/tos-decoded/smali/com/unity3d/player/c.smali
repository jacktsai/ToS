.class public final Lcom/unity3d/player/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/hardware/Camera;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method public final a(Landroid/hardware/Camera;Landroid/hardware/Camera$Size;ILandroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    mul-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x8

    add-int/lit16 v0, v0, 0x1000

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    invoke-virtual {p1, p4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method public final a(Landroid/hardware/Camera;[B)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-void
.end method
