.class Lcom/liquable/nemo/message/view/PictureMessageSelfBigView$1;
.super Ljava/lang/Object;
.source "PictureMessageSelfBigView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->initBubbleBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView$1;->this$0:Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 43
    .local v2, "message":Lcom/liquable/nemo/message/model/PictureMessage;
    if-nez v2, :cond_0

    .line 53
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView$1;->this$0:Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;

    iget-object v3, v3, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->resendButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView$1;->this$0:Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/PictureMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->onClickResend(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/message/model/PictureMessage;->getLocalKeyPath(Z)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 50
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 51
    .local v1, "mediaFile":Ljava/io/File;
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView$1;->this$0:Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;

    iget-object v3, v3, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;->context:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)V

    goto :goto_0
.end method
