.class Lcom/liquable/nemo/status/view/ChatStatusView$2;
.super Ljava/lang/Object;
.source "ChatStatusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/status/view/ChatStatusView;->delayToClearStatus(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/status/view/ChatStatusView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/status/view/ChatStatusView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/status/view/ChatStatusView;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/liquable/nemo/status/view/ChatStatusView$2;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView$2;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    # getter for: Lcom/liquable/nemo/status/view/ChatStatusView;->delayClearStatus:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/liquable/nemo/status/view/ChatStatusView;->access$000(Lcom/liquable/nemo/status/view/ChatStatusView;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView$2;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/status/view/ChatStatusView;->delayClearStatus:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/liquable/nemo/status/view/ChatStatusView;->access$002(Lcom/liquable/nemo/status/view/ChatStatusView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView$2;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    const/4 v1, 0x1

    # invokes: Lcom/liquable/nemo/status/view/ChatStatusView;->clearStatus(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/status/view/ChatStatusView;->access$100(Lcom/liquable/nemo/status/view/ChatStatusView;Z)V

    .line 266
    return-void
.end method
