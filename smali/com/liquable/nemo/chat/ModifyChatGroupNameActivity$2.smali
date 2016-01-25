.class Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$2;
.super Ljava/lang/Object;
.source "ModifyChatGroupNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

.field final synthetic val$modifyTitleBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$2;->this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$2;->val$modifyTitleBtn:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 83
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$2;->this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    # getter for: Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->access$100(Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$2;->val$modifyTitleBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$2;->val$modifyTitleBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
