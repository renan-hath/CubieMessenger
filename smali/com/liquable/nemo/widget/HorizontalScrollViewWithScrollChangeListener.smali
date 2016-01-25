.class public Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalScrollViewWithScrollChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->listener:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;->onScrollChanged(IIII)V

    .line 23
    return-void
.end method

.method public setOnScrollListener(Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->listener:Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener$OnScrollListener;

    .line 27
    return-void
.end method

.method public setScroll(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/widget/HorizontalScrollViewWithScrollChangeListener;->scrollTo(II)V

    .line 31
    return-void
.end method
