.class Lcom/aviary/android/feather/effects/StickersPanel$9;
.super Ljava/lang/Object;
.source "StickersPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/StickersPanel;->onStickersPackListUpdated(Ljava/util/List;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/StickersPanel;

.field final synthetic val$delta:I


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/StickersPanel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/StickersPanel;

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$9;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    iput p2, p0, Lcom/aviary/android/feather/effects/StickersPanel$9;->val$delta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1225
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$9;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$300(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v1

    iget v2, p0, Lcom/aviary/android/feather/effects/StickersPanel$9;->val$delta:I

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->computeScroll(I)I

    move-result v0

    .line 1226
    .local v0, "clamped":I
    if-eqz v0, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$9;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$300(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v1

    iget v2, p0, Lcom/aviary/android/feather/effects/StickersPanel$9;->val$delta:I

    const/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->smoothScrollBy(II)V

    .line 1231
    :goto_0
    return-void

    .line 1229
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/StickersPanel$9;->this$0:Lcom/aviary/android/feather/effects/StickersPanel;

    # getter for: Lcom/aviary/android/feather/effects/StickersPanel;->mListPacks:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/StickersPanel;->access$300(Lcom/aviary/android/feather/effects/StickersPanel;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v1

    iget v2, p0, Lcom/aviary/android/feather/effects/StickersPanel$9;->val$delta:I

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->scrollTo(I)I

    goto :goto_0
.end method
