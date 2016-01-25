.class Lcom/liquable/nemo/forum/ForumImagePreviewFragment$2;
.super Ljava/lang/Object;
.source "ForumImagePreviewFragment.java"

# interfaces
.implements Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->initInputMessageWidget()Lcom/liquable/nemo/chat/widget/InputMessageWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$2;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    const/16 v5, 0x1e

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p2}, Landroid/widget/EditText;->getLineCount()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 190
    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$2;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$2;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    .line 191
    invoke-virtual {v3}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d02f1

    new-array v1, v1, [Ljava/lang/Object;

    .line 192
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    .line 191
    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v2, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    :goto_0
    return v0

    .line 195
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ForumDaemon;->isArticleReplyCreatable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$2;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$2;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d014c

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 200
    goto :goto_0
.end method

.method public sendWithSecretText(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 205
    return-void
.end method

.method public sendWithText(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumImagePreviewFragment$2;->this$0:Lcom/liquable/nemo/forum/ForumImagePreviewFragment;

    # invokes: Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->send()V
    invoke-static {v0}, Lcom/liquable/nemo/forum/ForumImagePreviewFragment;->access$000(Lcom/liquable/nemo/forum/ForumImagePreviewFragment;)V

    .line 210
    return-void
.end method
