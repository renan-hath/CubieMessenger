.class public Lcom/liquable/nemo/background/FinishAdwaysCampaignTask;
.super Ljava/lang/Object;
.source "FinishAdwaysCampaignTask.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# static fields
.field private static final serialVersionUID:J = -0x557ebba995a229e3L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runInBackground(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    :try_start_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->tryFinishAdwaysCampaign()Ljava/util/List;

    move-result-object v1

    .line 19
    .local v1, "successRecords":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;

    .line 20
    .local v0, "record":Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->getProductId()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-interface {v3, v4, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService;->finishAdwaysCampaign(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    .end local v0    # "record":Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;
    .end local v1    # "successRecords":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    :catch_0
    move-exception v2

    .line 26
    :cond_0
    return-void
.end method
