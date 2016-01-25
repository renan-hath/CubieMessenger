.class Lcom/liquable/nemo/forum/view/PictureReplyView$1;
.super Ljava/lang/Object;
.source "PictureReplyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/view/PictureReplyView;->doUpdate(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/view/PictureReplyView;

.field final synthetic val$reply:Lcom/liquable/nemo/forum/model/article/PictureReply;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/view/PictureReplyView;Lcom/liquable/nemo/forum/model/article/PictureReply;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/view/PictureReplyView;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/liquable/nemo/forum/view/PictureReplyView$1;->this$0:Lcom/liquable/nemo/forum/view/PictureReplyView;

    iput-object p2, p0, Lcom/liquable/nemo/forum/view/PictureReplyView$1;->val$reply:Lcom/liquable/nemo/forum/model/article/PictureReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/PictureReplyView$1;->this$0:Lcom/liquable/nemo/forum/view/PictureReplyView;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/view/PictureReplyView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/forum/ForumImageViewerActivity$CreateIntent;

    iget-object v0, p0, Lcom/liquable/nemo/forum/view/PictureReplyView$1;->this$0:Lcom/liquable/nemo/forum/view/PictureReplyView;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/view/PictureReplyView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/liquable/nemo/forum/view/PictureReplyView$1;->val$reply:Lcom/liquable/nemo/forum/model/article/PictureReply;

    .line 52
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/PictureReply;->getPictureUrls()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/liquable/nemo/forum/ForumImageViewerActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
