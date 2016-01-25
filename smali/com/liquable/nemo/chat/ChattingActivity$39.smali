.class Lcom/liquable/nemo/chat/ChattingActivity$39;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->scrollToUnreadIndex()V
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
    .line 2227
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$39;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$39;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$3800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$39;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chattingAdapter:Lcom/liquable/nemo/chat/ChattingAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$1300(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/ChattingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingAdapter;->getUnreadMessageStartIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setSelection(I)V

    .line 2231
    return-void
.end method
