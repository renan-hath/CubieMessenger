.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraFacing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

.field public static final enum front:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

.field public static final enum rear:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

.field public static final enum unknown:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    const-string/jumbo v1, "front"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->front:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    .line 43
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    const-string/jumbo v1, "rear"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->rear:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    .line 44
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    const-string/jumbo v1, "unknown"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->unknown:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->front:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->rear:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->unknown:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    return-object v0
.end method
