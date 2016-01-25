.class Lcom/liquable/nemo/chat/ChattingActivity$28$1;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity$28;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/ChattingActivity$28;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity$28;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/ChattingActivity$28;

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$28$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v1, 0x8

    .line 1559
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$28$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$28;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$28;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->showMediaStateDetailBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$400(Lcom/liquable/nemo/chat/ChattingActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1560
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$28$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$28;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$28;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->mediaMountStateTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$500(Lcom/liquable/nemo/chat/ChattingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1561
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowSDCardMemoryLowWarning(Z)V

    .line 1562
    return-void
.end method
