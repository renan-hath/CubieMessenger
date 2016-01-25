.class Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;
.super Landroid/database/DataSetObserver;
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
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    .line 545
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataSetChange:Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;
    invoke-static {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$2(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    move-result-object v0

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->invalidate()V

    .line 550
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataSetChange:Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;
    invoke-static {v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$2(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    move-result-object v1

    # invokes: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->handleDataSetChanged(Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;)V
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$3(Lit/sephiroth/android/library/widget/HorizontalVariableListView;Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;)V

    .line 551
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataSetChange:Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;
    invoke-static {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$2(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    move-result-object v0

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;->invalidate()V

    .line 556
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HorizontalVariableListView$2;->this$0:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    # getter for: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->mDataSetChange:Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;
    invoke-static {v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$2(Lit/sephiroth/android/library/widget/HorizontalVariableListView;)Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;

    move-result-object v1

    # invokes: Lit/sephiroth/android/library/widget/HorizontalVariableListView;->handleDataSetChanged(Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;)V
    invoke-static {v0, v1}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->access$3(Lit/sephiroth/android/library/widget/HorizontalVariableListView;Lit/sephiroth/android/library/widget/HorizontalVariableListView$DataSetChange;)V

    .line 557
    return-void
.end method
