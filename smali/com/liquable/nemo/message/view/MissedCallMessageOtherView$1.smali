.class Lcom/liquable/nemo/message/view/MissedCallMessageOtherView$1;
.super Ljava/lang/Object;
.source "MissedCallMessageOtherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->initBubbleBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;

    iget-object v1, v0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;

    # getter for: Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->dialBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;->access$000(Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-static {v1, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 45
    return-void
.end method
