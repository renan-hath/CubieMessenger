.class Lcom/liquable/nemo/message/view/AskPictureMessageOtherView$1;
.super Ljava/lang/Object;
.source "AskPictureMessageOtherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;->initBubbleBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AskPictureMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/AskPictureMessage;

    .line 34
    .local v0, "message":Lcom/liquable/nemo/message/model/AskPictureMessage;
    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/message/view/AskPictureMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;

    iget-object v1, v1, Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;)V

    goto :goto_0
.end method
