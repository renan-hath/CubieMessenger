.class Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$2;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;Lcom/liquable/nemo/chat/model/ChattingManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$2;->this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$2;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p3, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, "msgId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v1, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$2$1;

    invoke-direct {v1, p0, v0}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$2$1;-><init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$2;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 146
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
