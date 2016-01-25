.class public final enum Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;
.super Ljava/lang/Enum;
.source "IAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/analytics/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdMobEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

.field public static final enum onDismissScreen:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

.field public static final enum onFailedToReceiveAd:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

.field public static final enum onLeaveApplication:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

.field public static final enum onPresentScreen:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

.field public static final enum onReceiveAd:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    const-string/jumbo v1, "onDismissScreen"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onDismissScreen:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    .line 35
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    const-string/jumbo v1, "onFailedToReceiveAd"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onFailedToReceiveAd:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    .line 36
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    const-string/jumbo v1, "onLeaveApplication"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onLeaveApplication:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    .line 37
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    const-string/jumbo v1, "onPresentScreen"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onPresentScreen:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    .line 38
    new-instance v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    const-string/jumbo v1, "onReceiveAd"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onReceiveAd:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onDismissScreen:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onFailedToReceiveAd:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onLeaveApplication:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onPresentScreen:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onReceiveAd:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->$VALUES:[Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    return-object v0
.end method
