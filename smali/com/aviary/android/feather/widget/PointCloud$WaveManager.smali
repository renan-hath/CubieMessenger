.class public Lcom/aviary/android/feather/widget/PointCloud$WaveManager;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaveManager"
.end annotation


# instance fields
.field private alpha:F

.field private radius:F

.field private type:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->radius:F

    .line 42
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->width:F

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->alpha:F

    .line 44
    sget-object v0, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->Circle:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    iput-object v0, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->type:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/PointCloud$WaveManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    .prologue
    .line 39
    iget v0, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->radius:F

    return v0
.end method

.method static synthetic access$100(Lcom/aviary/android/feather/widget/PointCloud$WaveManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    .prologue
    .line 39
    iget v0, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->width:F

    return v0
.end method

.method static synthetic access$200(Lcom/aviary/android/feather/widget/PointCloud$WaveManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    .prologue
    .line 39
    iget v0, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->alpha:F

    return v0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->alpha:F

    return v0
.end method

.method public getType()Lcom/aviary/android/feather/widget/PointCloud$WaveType;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->type:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    return-object v0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "a"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->alpha:F

    .line 64
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "r"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->radius:F

    .line 48
    return-void
.end method

.method public setType(Lcom/aviary/android/feather/widget/PointCloud$WaveType;)V
    .locals 0
    .param p1, "t"    # Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->type:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    .line 52
    return-void
.end method
