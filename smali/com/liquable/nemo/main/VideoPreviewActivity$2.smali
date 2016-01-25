.class Lcom/liquable/nemo/main/VideoPreviewActivity$2;
.super Ljava/lang/Object;
.source "VideoPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/VideoPreviewActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;

.field final synthetic val$sharableVideo:Lcom/liquable/nemo/share/SharableVideo;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/VideoPreviewActivity;Lcom/liquable/nemo/share/SharableVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/VideoPreviewActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$2;->this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;

    iput-object p2, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$2;->val$sharableVideo:Lcom/liquable/nemo/share/SharableVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$2;->this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/VideoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/main/VideoPreviewActivity;->isFromMain(Landroid/content/Intent;)Z
    invoke-static {v1}, Lcom/liquable/nemo/main/VideoPreviewActivity;->access$000(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$2;->this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;

    iget-object v2, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$2;->this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;

    .line 94
    invoke-virtual {v2}, Lcom/liquable/nemo/main/VideoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/share/SharableVideo;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharableVideo;

    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->createShareVideoFromMainIntent(Landroid/content/Context;Lcom/liquable/nemo/share/SharableVideo;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$2;->this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->SEND_VIDEO_FROM_MAIN_TAB:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/main/VideoPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$2;->this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$2;->val$sharableVideo:Lcom/liquable/nemo/share/SharableVideo;

    invoke-virtual {v3}, Lcom/liquable/nemo/share/SharableVideo;->createIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/main/VideoPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    iget-object v1, p0, Lcom/liquable/nemo/main/VideoPreviewActivity$2;->this$0:Lcom/liquable/nemo/main/VideoPreviewActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/main/VideoPreviewActivity;->finish()V

    goto :goto_0
.end method
