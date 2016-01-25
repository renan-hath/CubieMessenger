.class Lcom/liquable/nemo/message/view/PubChannelMessageView$LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "PubChannelMessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/message/view/PubChannelMessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LinkSpan"
.end annotation


# instance fields
.field private final linkUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView$LinkSpan;->linkUrl:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView$LinkSpan;->linkUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    .local v0, "executeIntent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/message/view/PubChannelMessageView$LinkSpan;->linkUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickOnPubChanneMessage(Ljava/lang/String;)V

    .line 40
    return-void
.end method
