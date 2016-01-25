.class public Lcom/liquable/nemo/analytics/AnalyticsServices;
.super Ljava/lang/Object;
.source "AnalyticsServices.java"


# static fields
.field private static analyticsService:Lcom/liquable/nemo/analytics/IAnalyticsService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;
    .locals 2

    .prologue
    .line 5
    const-class v1, Lcom/liquable/nemo/analytics/AnalyticsServices;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/liquable/nemo/analytics/AnalyticsServices;->analyticsService:Lcom/liquable/nemo/analytics/IAnalyticsService;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;

    invoke-direct {v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;-><init>()V

    sput-object v0, Lcom/liquable/nemo/analytics/AnalyticsServices;->analyticsService:Lcom/liquable/nemo/analytics/IAnalyticsService;

    .line 9
    :cond_0
    sget-object v0, Lcom/liquable/nemo/analytics/AnalyticsServices;->analyticsService:Lcom/liquable/nemo/analytics/IAnalyticsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 5
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
