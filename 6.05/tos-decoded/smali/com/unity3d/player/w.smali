.class final Lcom/unity3d/player/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;


# static fields
.field private static final R:Z

.field private static final e:[I

.field private static final f:[[F


# instance fields
.field private final A:Lcom/unity3d/player/UnityPlayer$a;

.field private B:F

.field private C:F

.field private D:F

.field private E:J

.field private final F:Lcom/unity3d/player/UnityPlayer$a;

.field private G:[F

.field private H:D

.field private final I:Lcom/unity3d/player/UnityPlayer$a;

.field private J:[F

.field private K:[F

.field private L:I

.field private final M:Lcom/unity3d/player/UnityPlayer$a;

.field private N:Landroid/location/Location;

.field private O:F

.field private P:Z

.field private Q:I

.field private S:Z

.field private T:I

.field protected a:Z

.field private final b:Landroid/content/Context;

.field private final c:Lcom/unity3d/player/UnityPlayer;

.field private final d:Landroid/view/Display;

.field private g:[F

.field private h:[F

.field private i:F

.field private j:F

.field private k:F

.field private l:J

.field private m:F

.field private n:F

.field private o:F

.field private p:J

.field private q:F

.field private r:F

.field private s:F

.field private t:J

.field private u:[F

.field private v:[F

.field private w:J

.field private final x:Lcom/unity3d/player/UnityPlayer$a;

.field private final y:Lcom/unity3d/player/UnityPlayer$a;

.field private final z:Lcom/unity3d/player/UnityPlayer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x0

    const/high16 v11, 0x3f00

    const/4 v10, 0x0

    const-wide/high16 v8, 0x4000

    const/4 v7, 0x4

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/unity3d/player/w;->e:[I

    new-array v1, v7, [[F

    new-array v2, v7, [F

    fill-array-data v2, :array_1

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-array v3, v7, [F

    aput v10, v3, v0

    const/4 v4, 0x1

    aput v10, v3, v4

    const/4 v4, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v11

    aput v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v5, v5

    mul-float/2addr v5, v11

    aput v5, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-array v3, v7, [F

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v3, v7, [F

    aput v10, v3, v0

    const/4 v4, 0x1

    aput v10, v3, v4

    const/4 v4, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v5, v5

    mul-float/2addr v5, v11

    aput v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v5, v5

    mul-float/2addr v5, v11

    aput v5, v3, v4

    aput-object v3, v1, v2

    sput-object v1, Lcom/unity3d/player/w;->f:[[F

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFJWI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "KFJWA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/unity3d/player/w;->R:Z

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/unity3d/player/w;->g:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/unity3d/player/w;->h:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/unity3d/player/w;->u:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/unity3d/player/w;->v:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/unity3d/player/w;->G:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/unity3d/player/w;->J:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/unity3d/player/w;->K:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/w;->O:F

    iput-boolean v1, p0, Lcom/unity3d/player/w;->P:Z

    iput v1, p0, Lcom/unity3d/player/w;->Q:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/w;->a:Z

    iput-boolean v1, p0, Lcom/unity3d/player/w;->S:Z

    iput v1, p0, Lcom/unity3d/player/w;->T:I

    iput-object p1, p0, Lcom/unity3d/player/w;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, p0, Lcom/unity3d/player/w;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/w;->d:Landroid/view/Display;

    new-instance v0, Lcom/unity3d/player/w$1;

    iget-object v1, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/w$1;-><init>(Lcom/unity3d/player/w;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->x:Lcom/unity3d/player/UnityPlayer$a;

    new-instance v0, Lcom/unity3d/player/w$2;

    iget-object v1, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/w$2;-><init>(Lcom/unity3d/player/w;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->y:Lcom/unity3d/player/UnityPlayer$a;

    new-instance v0, Lcom/unity3d/player/w$3;

    iget-object v1, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/w$3;-><init>(Lcom/unity3d/player/w;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->z:Lcom/unity3d/player/UnityPlayer$a;

    new-instance v0, Lcom/unity3d/player/w$4;

    iget-object v1, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/w$4;-><init>(Lcom/unity3d/player/w;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->A:Lcom/unity3d/player/UnityPlayer$a;

    new-instance v0, Lcom/unity3d/player/w$5;

    iget-object v1, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/w$5;-><init>(Lcom/unity3d/player/w;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->F:Lcom/unity3d/player/UnityPlayer$a;

    new-instance v0, Lcom/unity3d/player/w$6;

    iget-object v1, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/w$6;-><init>(Lcom/unity3d/player/w;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->M:Lcom/unity3d/player/UnityPlayer$a;

    new-instance v0, Lcom/unity3d/player/w$7;

    iget-object v1, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/w$7;-><init>(Lcom/unity3d/player/w;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/w;->I:Lcom/unity3d/player/UnityPlayer$a;

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->i:F

    return v0
.end method

.method public static a(Landroid/hardware/SensorEvent;Landroid/view/Display;)I
    .locals 11

    const/4 v5, 0x2

    const/high16 v7, -0x4080

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget-object v3, p0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    const/high16 v4, 0x3f80

    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    mul-float v9, v3, v3

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float/2addr v4, v8

    mul-float/2addr v0, v4

    mul-float/2addr v1, v4

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v9

    if-le v8, v9, :cond_5

    move v8, v6

    :goto_0
    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_6

    move v4, v6

    :goto_1
    xor-int/2addr v4, v8

    if-eqz v4, :cond_a

    neg-float v0, v0

    :goto_2
    sget-boolean v4, Lcom/unity3d/player/w;->R:Z

    if-eqz v4, :cond_9

    neg-float v4, v1

    :goto_3
    cmpg-float v1, v7, v0

    if-gez v1, :cond_8

    move v1, v6

    move v6, v0

    :goto_4
    neg-float v7, v0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_7

    neg-float v1, v0

    move v0, v5

    :goto_5
    cmpg-float v5, v1, v4

    if-gez v5, :cond_0

    const/4 v0, 0x3

    move v1, v4

    :cond_0
    neg-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    neg-float v1, v4

    const/4 v0, 0x4

    :cond_1
    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    const/4 v0, 0x5

    move v1, v3

    :cond_2
    neg-float v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_3

    neg-float v1, v3

    const/4 v0, 0x6

    :cond_3
    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe0

    const-wide/high16 v7, 0x4008

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    cmpg-double v1, v3, v5

    if-gez v1, :cond_4

    move v0, v2

    :cond_4
    return v0

    :cond_5
    move v8, v2

    goto :goto_0

    :cond_6
    move v4, v2

    goto :goto_1

    :cond_7
    move v0, v1

    move v1, v6

    goto :goto_5

    :cond_8
    move v1, v2

    move v6, v7

    goto :goto_4

    :cond_9
    move v4, v1

    goto :goto_3

    :cond_a
    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_2
.end method

.method private a(I)V
    .locals 1

    iput p1, p0, Lcom/unity3d/player/w;->T:I

    iget-object v0, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    return-void
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 6

    const v5, -0x422f2981

    iget-boolean v0, p0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/w;->d:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    :goto_0
    sget-object v1, Lcom/unity3d/player/w;->e:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/unity3d/player/w;->e:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/unity3d/player/w;->e:[I

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    sget-object v4, Lcom/unity3d/player/w;->e:[I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    aget v0, v4, v0

    mul-float/2addr v1, v5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v3

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/unity3d/player/w;->B:F

    mul-float v1, v2, v5

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/unity3d/player/w;->C:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/unity3d/player/w;->D:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/w;->E:J

    iget-object v0, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/w;->F:Lcom/unity3d/player/UnityPlayer$a;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Lcom/unity3d/player/UnityPlayer$a;)V

    iget-object v0, p0, Lcom/unity3d/player/w;->d:Landroid/view/Display;

    invoke-static {p1, v0}, Lcom/unity3d/player/w;->a(Landroid/hardware/SensorEvent;Landroid/view/Display;)I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/w;->L:I

    iget-object v0, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/w;->M:Lcom/unity3d/player/UnityPlayer$a;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Lcom/unity3d/player/UnityPlayer$a;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/location/Location;)V
    .locals 11

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/w;->N:Landroid/location/Location;

    invoke-static {p1, v0}, Lcom/unity3d/player/w;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/unity3d/player/w;->N:Landroid/location/Location;

    new-instance v0, Landroid/hardware/GeomagneticField;

    iget-object v1, p0, Lcom/unity3d/player/w;->N:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/unity3d/player/w;->N:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/unity3d/player/w;->N:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/unity3d/player/w;->N:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    iget-object v8, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v7

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocation(FFFFDF)V

    goto :goto_0
.end method

.method private static a([F[F[F)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget v0, p1, v6

    aget v1, p2, v3

    mul-float/2addr v0, v1

    aget v1, p1, v3

    aget v2, p2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v4

    aget v2, p2, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p2, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p0, v3

    aget v0, p1, v6

    aget v1, p2, v4

    mul-float/2addr v0, v1

    aget v1, p1, v4

    aget v2, p2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v3

    aget v2, p2, v5

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p0, v4

    aget v0, p1, v6

    aget v1, p2, v5

    mul-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p2, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v3

    aget v2, p2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p1, v4

    aget v2, p2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p0, v5

    aget v0, p1, v6

    aget v1, p2, v6

    mul-float/2addr v0, v1

    aget v1, p1, v3

    aget v2, p2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p1, v4

    aget v2, p2, v4

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p1, v5

    aget v2, p2, v5

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p0, v6

    return-void
.end method

.method private static a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v4, v3, v5

    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v3, v1

    :goto_1
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v6, v1

    :goto_3
    if-nez v3, :cond_0

    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v6, v2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    if-lez v0, :cond_8

    move v5, v1

    :goto_4
    if-gez v0, :cond_9

    move v4, v1

    :goto_5
    const/16 v3, 0xc8

    if-le v0, v3, :cond_a

    move v0, v1

    :goto_6
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/4 v7, 0x0

    cmpl-float v3, v3, v7

    if-nez v3, :cond_b

    move v3, v1

    :goto_7
    or-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/unity3d/player/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v4, :cond_0

    if-eqz v6, :cond_6

    if-eqz v5, :cond_0

    :cond_6
    if-eqz v6, :cond_7

    if-nez v0, :cond_7

    if-nez v3, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    move v5, v2

    goto :goto_4

    :cond_9
    move v4, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    move v3, v2

    goto :goto_7
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->j:F

    return v0
.end method

.method static synthetic c(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->k:F

    return v0
.end method

.method static synthetic d(Lcom/unity3d/player/w;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/w;->l:J

    return-wide v0
.end method

.method static synthetic e(Lcom/unity3d/player/w;)Lcom/unity3d/player/UnityPlayer;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    return-object v0
.end method

.method static synthetic f(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->m:F

    return v0
.end method

.method static synthetic g(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->n:F

    return v0
.end method

.method static synthetic h(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->o:F

    return v0
.end method

.method static synthetic i(Lcom/unity3d/player/w;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/w;->p:J

    return-wide v0
.end method

.method static synthetic j(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->q:F

    return v0
.end method

.method static synthetic k(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->r:F

    return v0
.end method

.method static synthetic l(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->s:F

    return v0
.end method

.method static synthetic m(Lcom/unity3d/player/w;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/w;->t:J

    return-wide v0
.end method

.method static synthetic n(Lcom/unity3d/player/w;)[F
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/w;->u:[F

    return-object v0
.end method

.method static synthetic o(Lcom/unity3d/player/w;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/w;->w:J

    return-wide v0
.end method

.method static synthetic p(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->B:F

    return v0
.end method

.method static synthetic q(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->C:F

    return v0
.end method

.method static synthetic r(Lcom/unity3d/player/w;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->D:F

    return v0
.end method

.method static synthetic s(Lcom/unity3d/player/w;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/w;->E:J

    return-wide v0
.end method

.method static synthetic t(Lcom/unity3d/player/w;)I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/w;->L:I

    return v0
.end method

.method static synthetic u(Lcom/unity3d/player/w;)[F
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/w;->G:[F

    return-object v0
.end method

.method static synthetic v(Lcom/unity3d/player/w;)D
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/w;->H:D

    return-wide v0
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/w;->O:F

    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/w;->b:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/w;->S:Z

    iget-boolean v0, p0, Lcom/unity3d/player/w;->P:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    const-string v1, "Location_StartUpdatingLocation already started!"

    invoke-static {v0, v1}, Lcom/unity3d/player/r;->Log(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/w;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/unity3d/player/w;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/w;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {p0, v9}, Lcom/unity3d/player/w;->a(I)V

    invoke-virtual {v0, v9}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lcom/unity3d/player/w;->a(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iget v1, p0, Lcom/unity3d/player/w;->Q:I

    if-ne v1, v6, :cond_7

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v5

    if-ne v5, v6, :cond_4

    move-object v7, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v2

    if-eq v2, v9, :cond_5

    :cond_6
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unity3d/player/w;->a(Landroid/location/Location;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/unity3d/player/w;->O:F

    iget-object v5, p0, Lcom/unity3d/player/w;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iput-boolean v9, p0, Lcom/unity3d/player/w;->P:Z

    goto :goto_2

    :cond_7
    move-object v7, v2

    goto :goto_1
.end method

.method public final b(F)V
    .locals 2

    const/4 v1, 0x1

    const/high16 v0, 0x42c8

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput v1, p0, Lcom/unity3d/player/w;->Q:I

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x43fa

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iput v1, p0, Lcom/unity3d/player/w;->Q:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/unity3d/player/w;->Q:I

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unity3d/player/w;->b:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-boolean v2, p0, Lcom/unity3d/player/w;->P:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/w;->N:Landroid/location/Location;

    invoke-direct {p0, v2}, Lcom/unity3d/player/w;->a(I)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/unity3d/player/w;->T:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/unity3d/player/w;->T:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/unity3d/player/w;->S:Z

    invoke-virtual {p0}, Lcom/unity3d/player/w;->c()V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/w;->S:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/w;->b()V

    :cond_0
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/unity3d/player/w;->a(I)V

    invoke-direct {p0, p1}, Lcom/unity3d/player/w;->a(Landroid/location/Location;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/w;->N:Landroid/location/Location;

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    const/4 v10, 0x3

    const v9, -0x422f2981

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    iget-boolean v0, p0, Lcom/unity3d/player/w;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/w;->d:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    :goto_0
    sget-object v2, Lcom/unity3d/player/w;->e:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/unity3d/player/w;->e:[I

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/unity3d/player/w;->e:[I

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    sget-object v5, Lcom/unity3d/player/w;->e:[I

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/unity3d/player/w;->g:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/unity3d/player/w;->g:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    iget-object v0, p0, Lcom/unity3d/player/w;->g:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    invoke-direct {p0, p1}, Lcom/unity3d/player/w;->a(Landroid/hardware/SensorEvent;)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/unity3d/player/w;->h:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/unity3d/player/w;->h:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    aput v3, v2, v8

    iget-object v2, p0, Lcom/unity3d/player/w;->h:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    aput v3, v2, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/unity3d/player/w;->H:D

    iget-object v2, p0, Lcom/unity3d/player/w;->J:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/unity3d/player/w;->g:[F

    iget-object v5, p0, Lcom/unity3d/player/w;->h:[F

    invoke-static {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/unity3d/player/w;->J:[F

    iget-object v3, p0, Lcom/unity3d/player/w;->K:[F

    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v2, p0, Lcom/unity3d/player/w;->K:[F

    aget v2, v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    packed-switch v0, :pswitch_data_1

    move v0, v2

    :goto_2
    const/high16 v2, 0x43b4

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    const/high16 v2, 0x43b4

    sub-float/2addr v0, v2

    goto :goto_2

    :pswitch_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/unity3d/player/w;->i:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/unity3d/player/w;->j:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    iput v0, p0, Lcom/unity3d/player/w;->k:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/w;->l:J

    iget-object v0, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/w;->x:Lcom/unity3d/player/UnityPlayer$a;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Lcom/unity3d/player/UnityPlayer$a;)V

    goto/16 :goto_1

    :pswitch_4
    mul-float v0, v2, v9

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/unity3d/player/w;->m:F

    mul-float v0, v3, v9

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/unity3d/player/w;->n:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/unity3d/player/w;->o:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/w;->p:J

    iget-object v0, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/w;->y:Lcom/unity3d/player/UnityPlayer$a;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Lcom/unity3d/player/UnityPlayer$a;)V

    goto/16 :goto_1

    :pswitch_5
    mul-float v0, v2, v9

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/unity3d/player/w;->q:F

    mul-float v0, v3, v9

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/unity3d/player/w;->r:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/unity3d/player/w;->s:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/w;->t:J

    iget-object v0, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/w;->z:Lcom/unity3d/player/UnityPlayer$a;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Lcom/unity3d/player/UnityPlayer$a;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/unity3d/player/w;->v:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/unity3d/player/w;->v:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    aput v3, v2, v8

    iget-object v2, p0, Lcom/unity3d/player/w;->v:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    aput v3, v2, v7

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/unity3d/player/w;->v:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v10

    :goto_3
    aput v1, v2, v10

    iget-object v1, p0, Lcom/unity3d/player/w;->u:[F

    iget-object v2, p0, Lcom/unity3d/player/w;->v:[F

    sget-object v3, Lcom/unity3d/player/w;->f:[[F

    aget-object v0, v3, v0

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/w;->a([F[F[F)V

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/w;->w:J

    iget-object v0, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/w;->A:Lcom/unity3d/player/UnityPlayer$a;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Lcom/unity3d/player/UnityPlayer$a;)V

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lcom/unity3d/player/w;->v:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/unity3d/player/w;->v:[F

    aget v1, v3, v1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/unity3d/player/w;->v:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/unity3d/player/w;->v:[F

    aget v3, v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/unity3d/player/w;->v:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/unity3d/player/w;->v:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/unity3d/player/w;->v:[F

    const/high16 v3, 0x3f80

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    const/high16 v3, 0x3f80

    sub-float v1, v3, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :pswitch_7
    const/high16 v0, 0x42b4

    add-float/2addr v0, v2

    goto/16 :goto_2

    :pswitch_8
    const/high16 v0, 0x4334

    add-float/2addr v0, v2

    goto/16 :goto_2

    :pswitch_9
    const/high16 v0, 0x4387

    add-float/2addr v0, v2

    goto/16 :goto_2

    :cond_4
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    const/high16 v2, 0x43b4

    add-float/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/unity3d/player/w;->G:[F

    iget-object v3, p0, Lcom/unity3d/player/w;->h:[F

    aget v3, v3, v1

    aput v3, v2, v1

    iget-object v1, p0, Lcom/unity3d/player/w;->G:[F

    iget-object v2, p0, Lcom/unity3d/player/w;->h:[F

    aget v2, v2, v8

    aput v2, v1, v8

    iget-object v1, p0, Lcom/unity3d/player/w;->G:[F

    iget-object v2, p0, Lcom/unity3d/player/w;->h:[F

    aget v2, v2, v7

    aput v2, v1, v7

    iget-object v1, p0, Lcom/unity3d/player/w;->G:[F

    aput v0, v1, v10

    iget-object v0, p0, Lcom/unity3d/player/w;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/w;->I:Lcom/unity3d/player/UnityPlayer$a;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Lcom/unity3d/player/UnityPlayer$a;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
