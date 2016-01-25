.class Lcom/liquable/nemo/forum/EditBoardFragment$2;
.super Ljava/lang/Object;
.source "EditBoardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/EditBoardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

.field final synthetic val$boardDescriptionEditText:Landroid/widget/EditText;

.field final synthetic val$boardTitleEditText:Landroid/widget/EditText;

.field final synthetic val$editBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/EditBoardFragment;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/EditBoardFragment;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    iput-object p2, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->val$boardTitleEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->val$boardDescriptionEditText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->val$editBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x32

    const/4 v7, 0x0

    .line 127
    iget-object v2, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->val$boardTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "boardTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->val$boardDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "boardDescription":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/EditBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d02a4

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 188
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->val$boardDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLineCount()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 136
    iget-object v2, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/EditBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    const v4, 0x7f0d00b7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 138
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 137
    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/forum/EditBoardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    new-instance v2, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;

    iget-object v3, p0, Lcom/liquable/nemo/forum/EditBoardFragment$2;->this$0:Lcom/liquable/nemo/forum/EditBoardFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/EditBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;-><init>(Lcom/liquable/nemo/forum/EditBoardFragment$2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v7, [Ljava/lang/Void;

    .line 186
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/forum/EditBoardFragment$2$1;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
