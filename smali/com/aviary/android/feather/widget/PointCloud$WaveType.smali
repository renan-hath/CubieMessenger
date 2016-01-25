.class final enum Lcom/aviary/android/feather/widget/PointCloud$WaveType;
.super Ljava/lang/Enum;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WaveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/widget/PointCloud$WaveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aviary/android/feather/widget/PointCloud$WaveType;

.field public static final enum Circle:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

.field public static final enum Line:Lcom/aviary/android/feather/widget/PointCloud$WaveType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    const-string/jumbo v1, "Circle"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/widget/PointCloud$WaveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->Circle:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    new-instance v0, Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    const-string/jumbo v1, "Line"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/widget/PointCloud$WaveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->Line:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    sget-object v1, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->Circle:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->Line:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->$VALUES:[Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/widget/PointCloud$WaveType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/widget/PointCloud$WaveType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->$VALUES:[Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    invoke-virtual {v0}, [Lcom/aviary/android/feather/widget/PointCloud$WaveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    return-object v0
.end method
