.class Lcom/liquable/nemo/chat/VideoViewerActivity$6;
.super Ljava/lang/Object;
.source "VideoViewerActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/ShareActionProvider$OnShareTargetSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/VideoViewerActivity;->onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/VideoViewerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$6;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareTargetSelected(Lcom/actionbarsherlock/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "source"    # Lcom/actionbarsherlock/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$6;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    .line 159
    # getter for: Lcom/liquable/nemo/chat/VideoViewerActivity;->videoMessage:Lcom/liquable/nemo/message/model/VideoMessage;
    invoke-static {v1}, Lcom/liquable/nemo/chat/VideoViewerActivity;->access$500(Lcom/liquable/nemo/chat/VideoViewerActivity;)Lcom/liquable/nemo/message/model/VideoMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/VideoMessage;->getShareEvent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "intent"

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareMediaMessageViaImageViewer(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    return v0
.end method
