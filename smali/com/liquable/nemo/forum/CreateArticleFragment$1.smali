.class Lcom/liquable/nemo/forum/CreateArticleFragment$1;
.super Ljava/lang/Object;
.source "CreateArticleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/CreateArticleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

.field final synthetic val$articleTitleEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/CreateArticleFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/CreateArticleFragment;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    iput-object p2, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->val$articleTitleEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x14

    const/4 v7, 0x0

    .line 121
    iget-object v2, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/forum/CreateArticleActivity$CreateIntent;->getBoardDto(Landroid/os/Bundle;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v0

    .line 123
    .local v0, "boardDto":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    iget-object v2, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->val$articleTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d029a

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 174
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->val$articleTitleEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLineCount()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 131
    iget-object v2, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    const v4, 0x7f0d007f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 133
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 132
    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    new-instance v2, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;

    iget-object v3, p0, Lcom/liquable/nemo/forum/CreateArticleFragment$1;->this$0:Lcom/liquable/nemo/forum/CreateArticleFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;-><init>(Lcom/liquable/nemo/forum/CreateArticleFragment$1;Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Ljava/lang/String;)V

    new-array v3, v7, [Ljava/lang/Void;

    .line 172
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/forum/CreateArticleFragment$1$1;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
