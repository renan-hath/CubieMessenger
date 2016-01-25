.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenApiAppMessageActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

.field public static final enum button:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

.field public static final enum link:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    const-string/jumbo v1, "link"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;->link:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    .line 81
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    const-string/jumbo v1, "button"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;->button:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;->link:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;->button:Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;

    return-object v0
.end method
