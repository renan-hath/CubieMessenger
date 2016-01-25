.class Lcom/liquable/nemo/forum/ForumImageViewerFragment$1;
.super Ljava/lang/Object;
.source "ForumImageViewerFragment.java"

# interfaces
.implements Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ForumImageViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ForumImageViewerFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ForumImageViewerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ForumImageViewerFragment;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumImageViewerFragment$1;->this$0:Lcom/liquable/nemo/forum/ForumImageViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTap()V
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImageViewerFragment$1;->this$0:Lcom/liquable/nemo/forum/ForumImageViewerFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImageViewerFragment$1;->this$0:Lcom/liquable/nemo/forum/ForumImageViewerFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/forum/ForumImageViewerFragment$1;->this$0:Lcom/liquable/nemo/forum/ForumImageViewerFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/ForumImageViewerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/BaseFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, "supportActionBar":Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 41
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
