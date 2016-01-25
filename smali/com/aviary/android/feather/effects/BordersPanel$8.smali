.class Lcom/aviary/android/feather/effects/BordersPanel$8;
.super Ljava/lang/Object;
.source "BordersPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/BordersPanel;->onEffectListUpdated(Ljava/util/List;Ljava/util/List;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/BordersPanel;

.field final synthetic val$delta:I


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 773
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$8;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iput p2, p0, Lcom/aviary/android/feather/effects/BordersPanel$8;->val$delta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 777
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$8;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$8;->val$delta:I

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->computeScroll(I)I

    move-result v0

    .line 778
    .local v0, "clamped":I
    if-eqz v0, :cond_0

    .line 779
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$8;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$8;->val$delta:I

    const/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->smoothScrollBy(II)V

    .line 783
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$8;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/BordersPanel;->mHList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget v2, p0, Lcom/aviary/android/feather/effects/BordersPanel$8;->val$delta:I

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->scrollTo(I)I

    goto :goto_0
.end method
