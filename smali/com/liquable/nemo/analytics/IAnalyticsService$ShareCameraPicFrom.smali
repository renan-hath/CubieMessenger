.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareCameraPicFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

.field public static final enum ask_message:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

.field public static final enum normal:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    const-string/jumbo v1, "normal"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;->normal:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    .line 86
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    const-string/jumbo v1, "ask_message"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;->ask_message:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;->normal:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;->ask_message:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;

    return-object v0
.end method
