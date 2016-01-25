.class public Lcom/liquable/nemo/targetedintent/ImageShareAction;
.super Lcom/liquable/nemo/targetedintent/ShareAction;
.source "ImageShareAction.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackingKey"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/liquable/nemo/targetedintent/ShareAction;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected decorate(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/liquable/nemo/targetedintent/ImageShareAction;->getMediaUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 15
    const-string/jumbo v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {p0}, Lcom/liquable/nemo/targetedintent/ImageShareAction;->getMediaUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    return-void
.end method

.method protected track()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/targetedintent/ImageShareAction;->trackingKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareImageWithOtherApps(Ljava/lang/String;)V

    .line 22
    return-void
.end method
