.class public Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;
.super Landroid/widget/ListView;
.source "ListViewWithSizeChangedListener.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnSizeChangeListener;,
        Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnRecycleListener;
    }
.end annotation


# instance fields
.field private onRecycleListener:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnRecycleListener;

.field private onSizeChangeListener:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnSizeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$1;-><init>(Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->onRecycleListener:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnRecycleListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->onRecycleListener:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnRecycleListener;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnRecycleListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->onSizeChangeListener:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnSizeChangeListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->onSizeChangeListener:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnSizeChangeListener;

    invoke-interface {v0}, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnSizeChangeListener;->onSizeChanged()V

    .line 60
    :cond_0
    return-void
.end method

.method public setOnRecycleListener(Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnRecycleListener;)V
    .locals 0
    .param p1, "onRecycleListener"    # Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnRecycleListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->onRecycleListener:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnRecycleListener;

    .line 64
    return-void
.end method

.method public setOnSizeChangeListener(Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnSizeChangeListener;)V
    .locals 0
    .param p1, "onSizeChangeListener"    # Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnSizeChangeListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;->onSizeChangeListener:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$OnSizeChangeListener;

    .line 68
    return-void
.end method
