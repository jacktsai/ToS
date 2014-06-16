.class public final Lcom/unity3d/player/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/f;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;II)F
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private a([I)V
    .locals 8

    const/4 v0, 0x0

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v4, p1

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_1

    aget v5, p1, v0

    new-instance v6, Lcom/unity3d/player/f$a;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v5}, Lcom/unity3d/player/f;->b(I)[I

    move-result-object v7

    invoke-direct {v6, p0, v1, v7}, Lcom/unity3d/player/f$a;-><init>(Lcom/unity3d/player/f;I[I)V

    iget-object v1, v6, Lcom/unity3d/player/f$a;->b:[I

    if-eqz v1, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/unity3d/player/f;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static b([I)[I
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method

.method private c(I)Lcom/unity3d/player/f$a;
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/f;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/f$a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/f;->a()[I

    iget-object v0, p0, Lcom/unity3d/player/f;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/f$a;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;I)F
    .locals 1

    const/16 v0, 0x9

    invoke-static {p1, v0, p2}, Lcom/unity3d/player/f;->a(Landroid/view/MotionEvent;II)F

    move-result v0

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final a()[I
    .locals 8

    const v7, 0x1000010

    const/4 v0, 0x0

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    array-length v1, v3

    new-array v4, v1, [I

    array-length v5, v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget v6, v3, v2

    invoke-static {v6}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_1

    add-int/lit8 v0, v1, 0x1

    aput v6, v4, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v4, v1}, Lcom/unity3d/player/f;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Lcom/unity3d/player/f;->b([I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/player/f;->a([I)V

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final a(Landroid/view/MotionEvent;)[Lcom/unity3d/player/k$a;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    new-array v4, v0, [Lcom/unity3d/player/k$a;

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/unity3d/player/f;->c(I)Lcom/unity3d/player/f$a;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Lcom/unity3d/player/k$a;

    iget v3, v5, Lcom/unity3d/player/f$a;->a:I

    iget-object v7, v5, Lcom/unity3d/player/f$a;->b:[I

    array-length v7, v7

    new-array v7, v7, [F

    invoke-direct {v6, v3, v7}, Lcom/unity3d/player/k$a;-><init>(I[F)V

    move v3, v1

    :goto_1
    iget-object v7, v5, Lcom/unity3d/player/f$a;->b:[I

    array-length v7, v7

    if-ge v3, v7, :cond_0

    iget-object v7, v6, Lcom/unity3d/player/k$a;->b:[F

    iget-object v8, v5, Lcom/unity3d/player/f$a;->b:[I

    aget v8, v8, v3

    invoke-static {p1, v8, v0}, Lcom/unity3d/player/f;->a(Landroid/view/MotionEvent;II)F

    move-result v8

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    aput-object v6, v4, v2

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4, v2}, Lcom/unity3d/player/f;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/player/k$a;

    return-object v0
.end method

.method public final b(I)[I
    .locals 6

    const v5, 0x1000010

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v2

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v0

    aput v0, v3, v1

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    invoke-static {v3, v1}, Lcom/unity3d/player/f;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Lcom/unity3d/player/f;->b([I)[I

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method
