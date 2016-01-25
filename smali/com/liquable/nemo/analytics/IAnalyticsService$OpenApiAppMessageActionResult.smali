.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenApiAppMessageActionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

.field public static final enum not_available:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

.field public static final enum open_app:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

.field public static final enum open_store:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    const-string/jumbo v1, "open_app"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->open_app:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    .line 75
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    const-string/jumbo v1, "open_store"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->open_store:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    .line 76
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    const-string/jumbo v1, "not_available"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->not_available:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->open_app:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->open_store:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->not_available:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    return-object v0
.end method
