.class Lcom/liquable/nemo/main/MainRecommendForumView$2;
.super Ljava/lang/Object;
.source "MainRecommendForumView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainRecommendForumView;->createViewForRecommendView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainRecommendForumView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainRecommendForumView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainRecommendForumView;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/liquable/nemo/main/MainRecommendForumView$2;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 108
    if-eqz p2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/main/MainRecommendForumView$2;->this$0:Lcom/liquable/nemo/main/MainRecommendForumView;

    const/4 v1, 0x1

    # invokes: Lcom/liquable/nemo/main/MainRecommendForumView;->tryListHotArticles(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainRecommendForumView;->access$100(Lcom/liquable/nemo/main/MainRecommendForumView;Z)V

    goto :goto_0
.end method
