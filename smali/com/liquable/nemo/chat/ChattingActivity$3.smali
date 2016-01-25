.class Lcom/liquable/nemo/chat/ChattingActivity$3;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ChattingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$3;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 405
    .local v0, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    if-nez v0, :cond_0

    .line 406
    const/4 v1, 0x0

    .line 409
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$3;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->onMessageLongClick(Lcom/liquable/nemo/message/model/DomainMessage;)Z

    move-result v1

    goto :goto_0
.end method
