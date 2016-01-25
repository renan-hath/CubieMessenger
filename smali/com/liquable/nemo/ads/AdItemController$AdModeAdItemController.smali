.class Lcom/liquable/nemo/ads/AdItemController$AdModeAdItemController;
.super Ljava/lang/Object;
.source "AdItemController.java"

# interfaces
.implements Lcom/google/ads/AdListener;
.implements Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/ads/AdItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdModeAdItemController"
.end annotation


# instance fields
.field private final adView:Lcom/google/ads/AdView;

.field final synthetic this$0:Lcom/liquable/nemo/ads/AdItemController;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/ads/AdItemController;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 35
    iput-object p1, p0, Lcom/liquable/nemo/ads/AdItemController$AdModeAdItemController;->this$0:Lcom/liquable/nemo/ads/AdItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/google/ads/AdView;

    check-cast p2, Landroid/app/Activity;

    .end local p2    # "context":Landroid/content/Context;
    sget-object v1, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    const-string/jumbo v2, "a1524a8138ac2a4"

    invoke-direct {v0, p2, v1, v2}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/ads/AdItemController$AdModeAdItemController;->adView:Lcom/google/ads/AdView;

    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController$AdModeAdItemController;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController$AdModeAdItemController;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0, v3}, Lcom/google/ads/AdView;->setClickable(Z)V

    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController$AdModeAdItemController;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0, v3}, Lcom/google/ads/AdView;->setFocusable(Z)V

    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController$AdModeAdItemController;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0, v3}, Lcom/google/ads/AdView;->setFocusableInTouchMode(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController$AdModeAdItemController;->adView:Lcom/google/ads/AdView;

    return-object v0
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 50
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onDismissScreen:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->adMobEvent(Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;)V

    .line 51
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;
    .param p2, "error"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 55
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onFailedToReceiveAd:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    invoke-interface {v0, v1, p2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->adMobEvent(Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 56
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 60
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onLeaveApplication:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->adMobEvent(Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;)V

    .line 61
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 65
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onPresentScreen:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->adMobEvent(Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;)V

    .line 66
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/google/ads/Ad;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController$AdModeAdItemController;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->requestFocus()Z

    .line 71
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->onReceiveAd:Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->adMobEvent(Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;)V

    .line 72
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 77
    .local v0, "adRequest":Lcom/google/ads/AdRequest;
    const-string/jumbo v1, "8F1E571B976CA328A63BBBA9CCE264C3"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 78
    const-string/jumbo v1, "C8193054385A92F43C8AEC6E8D05D040"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 79
    iget-object v1, p0, Lcom/liquable/nemo/ads/AdItemController$AdModeAdItemController;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 80
    return-void
.end method
