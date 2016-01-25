.class Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;
.super Lit/sephiroth/android/library/utils/DataSetObserverExtended;
.source "HorizontalVariableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/widget/HorizontalVariableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    .line 501
    invoke-direct {p0}, Lit/sephiroth/android/library/utils/DataSetObserverExtended;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 532
    sget-boolean v0, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 533
    const-string/jumbo v0, "horizontal-variable-list"

    const-string/jumbo v1, "onChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataSetChange:Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;
    invoke-static {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$2(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    move-result-object v0

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->invalidate()V

    .line 536
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataSetChange:Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;
    invoke-static {v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$2(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    move-result-object v1

    # invokes: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->handleDataSetChanged(Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;)V
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$3(Lit/sephiroth/android/library/widget/HorizontalVariableListView;Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;)V

    .line 537
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 541
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$1;->onChanged()V

    .line 542
    return-void
.end method
