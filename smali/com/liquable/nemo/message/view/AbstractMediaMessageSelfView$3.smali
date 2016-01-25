.class Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$3;
.super Ljava/lang/Object;
.source "AbstractMediaMessageSelfView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->initMessageBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

.field final synthetic val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;Lcom/liquable/nemo/chat/model/ChattingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$3;->this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$3;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .local v1, "msgId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$3;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/IMediaMessage;

    .line 158
    .local v0, "foundMessage":Lcom/liquable/nemo/message/model/IMediaMessage;
    if-eqz v0, :cond_0

    .line 161
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$3;->this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

    # getter for: Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->stopUploadBtn:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->access$100(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 162
    iget-object v2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$3;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->cancelUploadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0
.end method
