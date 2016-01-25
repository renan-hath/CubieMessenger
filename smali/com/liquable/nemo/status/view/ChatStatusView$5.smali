.class Lcom/liquable/nemo/status/view/ChatStatusView$5;
.super Ljava/lang/Object;
.source "ChatStatusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/status/view/ChatStatusView;->showPictureOrPaintOrYoutube(Lcom/liquable/nemo/friend/model/Account;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

.field final synthetic val$message:Lcom/liquable/nemo/message/model/DomainMessage;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/status/view/ChatStatusView;Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/status/view/ChatStatusView;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/liquable/nemo/status/view/ChatStatusView$5;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    iput-object p2, p0, Lcom/liquable/nemo/status/view/ChatStatusView$5;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/liquable/nemo/status/view/ChatStatusView$5;->this$0:Lcom/liquable/nemo/status/view/ChatStatusView;

    invoke-virtual {v0}, Lcom/liquable/nemo/status/view/ChatStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/status/view/ChatStatusView$5;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 421
    return-void
.end method
