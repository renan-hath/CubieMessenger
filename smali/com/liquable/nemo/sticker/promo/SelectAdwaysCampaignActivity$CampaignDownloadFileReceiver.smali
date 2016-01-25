.class Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CampaignDownloadFileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SelectAdwaysCampaignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CampaignDownloadFileReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CampaignDownloadFileReceiver;->this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CampaignDownloadFileReceiver;-><init>(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const/4 v1, 0x0

    sget-object v2, Lcom/liquable/nemo/util/urlimage/UrlFileType;->AD_ITEM:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchUrlFileTransferCompleteEvent(Landroid/content/Intent;[Lcom/liquable/nemo/util/urlimage/UrlFileType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CampaignDownloadFileReceiver;->this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    # getter for: Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->campaignAdapter:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->access$000(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;)Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;->notifyDataSetChanged()V

    .line 44
    :cond_0
    return-void
.end method
