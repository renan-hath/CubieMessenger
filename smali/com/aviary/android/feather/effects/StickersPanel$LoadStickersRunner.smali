.class Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;
.super Ljava/lang/Object;
.source "StickersPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/StickersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadStickersRunner"
.end annotation


# instance fields
.field mlist:[Ljava/lang/String;

.field final synthetic this$0:Lcom/aviary/android/feather/effects/StickersPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/StickersPanel;[Ljava/lang/String;)V
    .locals 0
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1808
    iput-object p2, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->mlist:[Ljava/lang/String;

    .line 1809
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1814
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # setter for: Lcom/aviary/android/feather/effects/StickersPanel;->mIsAnimating:Z
    invoke-static {v1, v6}, Lcom/aviary/android/feather/effects/StickersPanel;->access$902(Lcom/aviary/android/feather/effects/StickersPanel;Z)Z

    .line 1816
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1700(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v1

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    .line 1817
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/StickersPanel;->mOptionView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1848
    :goto_0
    return-void

    .line 1821
    :cond_0
    new-instance v0, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    invoke-virtual {v2}, Lcom/aviary/android/feather/effects/StickersPanel;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/aviary/android/feather/R$layout;->aviary_sticker_item_single:I

    iget-object v4, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->mlist:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;-><init>(Lcom/aviary/android/feather/effects/StickersPanel;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 1822
    .local v0, "adapter":Lcom/aviary/android/feather/effects/StickersPanel$StickersAdapter;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1700(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1823
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1700(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mStickerThumbSize:I
    invoke-static {v2}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1600(Lcom/aviary/android/feather/effects/StickersPanel;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setDragTolerance(I)V

    .line 1825
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1700(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setDragScrollEnabled(Z)V

    .line 1826
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1700(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v1

    new-instance v2, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner$1;

    invoke-direct {v2, p0}, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner$1;-><init>(Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;)V

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemDragListener(Lit/sephiroth/android/library/widget/HorizontalListView$OnItemDragListener;)V

    .line 1833
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1700(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setLongClickable(Z)V

    .line 1835
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mListStickers:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$1700(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v1

    new-instance v2, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner$2;

    invoke-direct {v2, p0}, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner$2;-><init>(Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;)V

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemClickedListener(Lit/sephiroth/android/library/widget/HorizontalVariableListView$OnItemClickedListener;)V

    .line 1846
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # setter for: Lcom/aviary/android/feather/effects/StickersPanel;->mIsAnimating:Z
    invoke-static {v1, v5}, Lcom/aviary/android/feather/effects/StickersPanel;->access$902(Lcom/aviary/android/feather/effects/StickersPanel;Z)Z

    .line 1847
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$LoadStickersRunner;->mlist:[Ljava/lang/String;

    goto :goto_0
.end method
