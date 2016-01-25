.class abstract Lcom/liquable/nemo/targetedintent/InviteAction;
.super Lcom/liquable/nemo/targetedintent/TargetedAction;
.source "InviteAction.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackingKey"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/liquable/nemo/targetedintent/TargetedAction;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected track()V
    .locals 2

    .prologue
    .line 12
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/InviteAction;->trackingKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareAppUsingOtherApps(Ljava/lang/String;)V

    .line 13
    return-void
.end method
