.class public final Lcom/unity3d/player/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public final a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    mul-int/lit16 v5, v0, 0x3e8

    aput v5, v3, v4

    const/4 v4, 0x1

    mul-int/lit16 v0, v0, 0x3e8

    aput v0, v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final a(Landroid/hardware/Camera$Parameters;[I)V
    .locals 1

    const/4 v0, 0x0

    aget v0, p2, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    return-void
.end method

.method public final a(Landroid/hardware/Camera;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method public final a(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method public final b(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "none"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
