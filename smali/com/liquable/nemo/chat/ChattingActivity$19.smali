.class Lcom/liquable/nemo/chat/ChattingActivity$19;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->loadMore()V
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
    .line 1124
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$19;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1128
    instance-of v0, p1, Lcom/liquable/nemo/message/view/AbstractMessageView;

    if-eqz v0, :cond_0

    .line 1129
    check-cast p1, Lcom/liquable/nemo/message/view/AbstractMessageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/liquable/nemo/message/view/AbstractMessageView;->onRecycle()V

    .line 1131
    :cond_0
    return-void
.end method
