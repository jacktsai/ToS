.class final Lcom/unity3d/player/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/a$a;
    }
.end annotation


# instance fields
.field a:Landroid/hardware/Camera;

.field b:Landroid/hardware/Camera$Parameters;

.field c:Landroid/hardware/Camera$Size;

.field d:I

.field e:[I

.field f:Lcom/unity3d/player/e;

.field private final g:[Ljava/lang/Object;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    iput p1, p0, Lcom/unity3d/player/a;->h:I

    const/16 v0, 0x280

    invoke-static {p2, v0}, Lcom/unity3d/player/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/a;->i:I

    const/16 v0, 0x1e0

    invoke-static {p3, v0}, Lcom/unity3d/player/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/a;->j:I

    const/16 v0, 0x18

    invoke-static {p4, v0}, Lcom/unity3d/player/a;->a(II)I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/a;->k:I

    return-void
.end method

.method private static final a(II)I
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/unity3d/player/a;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    return-object v0
.end method

.method private b(Lcom/unity3d/player/a$a;)V
    .locals 6

    iget-object v1, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    iget v2, p0, Lcom/unity3d/player/a;->h:I

    invoke-interface {v0, v2}, Lcom/unity3d/player/j;->a(I)Landroid/hardware/Camera;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0}, Lcom/unity3d/player/a;->f()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera$Size;

    invoke-direct {p0}, Lcom/unity3d/player/a;->e()[I

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->e:[I

    invoke-direct {p0}, Lcom/unity3d/player/a;->d()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/a;->d:I

    sget-object v0, Lcom/unity3d/player/u;->h:Lcom/unity3d/player/h;

    iget-object v2, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v2}, Lcom/unity3d/player/h;->b(Landroid/hardware/Camera$Parameters;)V

    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    iget-object v2, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v2}, Lcom/unity3d/player/j;->b(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    iget-object v2, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/unity3d/player/a;->e:[I

    invoke-interface {v0, v2, v3}, Lcom/unity3d/player/j;->a(Landroid/hardware/Camera$Parameters;[I)V

    :goto_1
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    new-instance v0, Lcom/unity3d/player/a$1;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/a$1;-><init>(Lcom/unity3d/player/a;Lcom/unity3d/player/a$a;)V

    sget-boolean v2, Lcom/unity3d/player/u;->b:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/unity3d/player/u;->i:Lcom/unity3d/player/i;

    iget-object v3, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera$Size;

    iget v5, p0, Lcom/unity3d/player/a;->d:I

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/unity3d/player/i;->a(Landroid/hardware/Camera;Landroid/hardware/Camera$Size;ILandroid/hardware/Camera$PreviewCallback;)V

    :goto_2
    monitor-exit v1

    return-void

    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/unity3d/player/u;->h:Lcom/unity3d/player/h;

    iget-object v2, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/unity3d/player/a;->e:[I

    invoke-interface {v0, v2, v3}, Lcom/unity3d/player/h;->a(Landroid/hardware/Camera$Parameters;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    sget-object v2, Lcom/unity3d/player/u;->h:Lcom/unity3d/player/h;

    iget-object v3, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-interface {v2, v3, v0}, Lcom/unity3d/player/h;->a(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private final d()I
    .locals 2

    const/16 v1, 0x11

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    sget-boolean v0, Lcom/unity3d/player/u;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/u;->i:Lcom/unity3d/player/i;

    invoke-interface {v0, v1}, Lcom/unity3d/player/i;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/unity3d/player/u;->h:Lcom/unity3d/player/h;

    invoke-interface {v0, v1}, Lcom/unity3d/player/h;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private final e()[I
    .locals 15

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget v0, p0, Lcom/unity3d/player/a;->k:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v6, v0

    sget-boolean v0, Lcom/unity3d/player/u;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/u;->j:Lcom/unity3d/player/j;

    iget-object v1, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/unity3d/player/j;->a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    new-array v3, v1, [I

    iget v1, p0, Lcom/unity3d/player/a;->k:I

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, v3, v11

    iget v1, p0, Lcom/unity3d/player/a;->k:I

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, v3, v12

    const-wide v1, 0x7fefffffffffffffL

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v4, v0, v11

    int-to-double v4, v4

    div-double v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    aget v9, v0, v12

    int-to-double v9, v9

    div-double v9, v6, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    add-double/2addr v4, v9

    cmpg-double v9, v4, v1

    if-gez v9, :cond_2

    move-object v2, v0

    move-wide v0, v4

    :goto_2
    move-object v3, v2

    move-wide v13, v0

    move-wide v1, v13

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/unity3d/player/u;->h:Lcom/unity3d/player/h;

    iget-object v1, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/unity3d/player/h;->a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    move-wide v13, v1

    move-wide v0, v13

    move-object v2, v3

    goto :goto_2
.end method

.method private final f()Landroid/hardware/Camera$Size;
    .locals 15

    iget v0, p0, Lcom/unity3d/player/a;->i:I

    int-to-double v6, v0

    iget v0, p0, Lcom/unity3d/player/a;->j:I

    int-to-double v8, v0

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    const-wide v3, 0x7fefffffffffffffL

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v1, v1

    div-double v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v11, v11

    div-double v11, v8, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    add-double/2addr v1, v11

    cmpg-double v11, v1, v3

    if-gez v11, :cond_1

    move-wide v13, v1

    move-object v2, v0

    move-wide v0, v13

    :goto_1
    move-wide v3, v0

    move-object v5, v2

    goto :goto_0

    :cond_0
    return-object v5

    :cond_1
    move-wide v0, v3

    move-object v2, v5

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/a;->h:I

    return v0
.end method

.method public final a(Lcom/unity3d/player/a$a;)V
    .locals 3

    iget-object v1, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/unity3d/player/a;->b(Lcom/unity3d/player/a$a;)V

    :cond_0
    sget-boolean v0, Lcom/unity3d/player/u;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/player/u;->k:Lcom/unity3d/player/l;

    iget-object v2, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-interface {v0, v2}, Lcom/unity3d/player/l;->a(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/e;

    if-nez v0, :cond_2

    new-instance v0, Lcom/unity3d/player/a$2;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a$2;-><init>(Lcom/unity3d/player/a;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/e;

    iget-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/e;

    invoke-virtual {v0}, Lcom/unity3d/player/e;->a()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a([B)V
    .locals 3

    iget-object v1, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/unity3d/player/u;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/u;->i:Lcom/unity3d/player/i;

    iget-object v2, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-interface {v0, v2, p1}, Lcom/unity3d/player/i;->a(Landroid/hardware/Camera;[B)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Landroid/hardware/Camera$Size;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method public final c()V
    .locals 3

    iget-object v1, p0, Lcom/unity3d/player/a;->g:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/unity3d/player/u;->b:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unity3d/player/u;->i:Lcom/unity3d/player/i;

    iget-object v2, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-interface {v0, v2}, Lcom/unity3d/player/i;->a(Landroid/hardware/Camera;)V

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/e;

    invoke-virtual {v0}, Lcom/unity3d/player/e;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->f:Lcom/unity3d/player/e;

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    sget-object v0, Lcom/unity3d/player/u;->h:Lcom/unity3d/player/h;

    iget-object v2, p0, Lcom/unity3d/player/a;->a:Landroid/hardware/Camera;

    invoke-interface {v0, v2}, Lcom/unity3d/player/h;->a(Landroid/hardware/Camera;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
