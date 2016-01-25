.class Lcom/liquable/nemo/chat/ChattingActivity$29$1;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity$29;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/ChattingActivity$29;

.field final synthetic val$message:Lcom/liquable/nemo/message/model/DomainMessage;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity$29;Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/ChattingActivity$29;

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$29$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$29;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$29$1;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$29$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$29;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$29;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$29$1;->val$message:Lcom/liquable/nemo/message/model/DomainMessage;

    # invokes: Lcom/liquable/nemo/chat/ChattingActivity;->saveCustomSticker(Lcom/liquable/nemo/message/model/DomainMessage;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$2600(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 1592
    return-void
.end method
