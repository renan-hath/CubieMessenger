.class Lcom/liquable/nemo/cubiehead/ChattingLite$25;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->scrollToLast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 920
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$25;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$25;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$2400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$25;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->messagesListView:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;
    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$2400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setSelection(I)V

    .line 924
    return-void
.end method
