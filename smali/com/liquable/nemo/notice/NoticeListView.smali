.class public Lcom/liquable/nemo/notice/NoticeListView;
.super Landroid/widget/ListView;
.source "NoticeListView.java"


# instance fields
.field private allNoticesListAdapter:Lcom/liquable/nemo/notice/NoticeListAdapter;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object p1, p0, Lcom/liquable/nemo/notice/NoticeListView;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getItemType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 3
    .param p1, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 29
    new-instance v0, Lcom/liquable/nemo/notice/NoticeListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeListView;->context:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lcom/liquable/nemo/notice/NoticeListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeListView;->allNoticesListAdapter:Lcom/liquable/nemo/notice/NoticeListAdapter;

    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListView;->allNoticesListAdapter:Lcom/liquable/nemo/notice/NoticeListAdapter;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/notice/NoticeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListView;->allNoticesListAdapter:Lcom/liquable/nemo/notice/NoticeListAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/NoticeListAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method public resetAllNotices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/BaseNotice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "allNotices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListView;->allNoticesListAdapter:Lcom/liquable/nemo/notice/NoticeListAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/notice/NoticeListAdapter;->reset(Ljava/util/List;)V

    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListView;->allNoticesListAdapter:Lcom/liquable/nemo/notice/NoticeListAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/NoticeListAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method

.method public resetHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/notice/NoticeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/notice/NoticeListView;->addHeaderView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListView;->allNoticesListAdapter:Lcom/liquable/nemo/notice/NoticeListAdapter;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/notice/NoticeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    return-void
.end method
