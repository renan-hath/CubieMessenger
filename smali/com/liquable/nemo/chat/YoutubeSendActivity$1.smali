.class Lcom/liquable/nemo/chat/YoutubeSendActivity$1;
.super Ljava/lang/Object;
.source "YoutubeSendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/YoutubeSendActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/YoutubeSendActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/YoutubeSendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/YoutubeSendActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity$1;->this$0:Lcom/liquable/nemo/chat/YoutubeSendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity$1;->this$0:Lcom/liquable/nemo/chat/YoutubeSendActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity$1;->this$0:Lcom/liquable/nemo/chat/YoutubeSendActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubeSendActivity;->youtubeVideo:Lcom/liquable/nemo/youtube/YoutubeVideo;
    invoke-static {v2}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->access$000(Lcom/liquable/nemo/chat/YoutubeSendActivity;)Lcom/liquable/nemo/youtube/YoutubeVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/youtube/YoutubeVideo;->createIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->setResult(ILandroid/content/Intent;)V

    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubeSendActivity$1;->this$0:Lcom/liquable/nemo/chat/YoutubeSendActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/YoutubeSendActivity;->finish()V

    .line 58
    return-void
.end method
