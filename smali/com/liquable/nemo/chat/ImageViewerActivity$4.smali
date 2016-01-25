.class Lcom/liquable/nemo/chat/ImageViewerActivity$4;
.super Ljava/lang/Object;
.source "ImageViewerActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImageViewerActivity;->onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImageViewerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$4;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareTargetSelected(Lcom/actionbarsherlock/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "source"    # Lcom/actionbarsherlock/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 485
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$4;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->getMessage()Lcom/liquable/nemo/message/model/IMediaMessage;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$1200(Lcom/liquable/nemo/chat/ImageViewerActivity;)Lcom/liquable/nemo/message/model/IMediaMessage;

    move-result-object v0

    .line 486
    .local v0, "msg":Lcom/liquable/nemo/message/model/IMediaMessage;
    if-nez v0, :cond_0

    .line 491
    :goto_0
    return v4

    .line 489
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v0}, Lcom/liquable/nemo/message/model/IMediaMessage;->getShareEvent()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "intent"

    invoke-interface {v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareMediaMessageViaImageViewer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
