.class public final Lcom/unity3d/player/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)I
    .locals 4

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-eq v3, v0, :cond_1

    and-int/lit8 v3, v2, 0x2

    if-ne v3, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    and-int/lit8 v0, v2, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;I)I
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    return v0
.end method
