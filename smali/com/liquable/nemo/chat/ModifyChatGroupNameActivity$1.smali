.class Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;
.super Ljava/lang/Object;
.source "ModifyChatGroupNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;->this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 47
    iget-object v1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;->this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    # getter for: Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->groupNameEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->access$000(Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "groupName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;->this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;->this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    const v3, 0x7f0d02dd

    .line 50
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 49
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 78
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v1, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;->this$0:Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    invoke-direct {v1, p0, v2, v0}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;-><init>(Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Void;

    .line 77
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1$1;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
