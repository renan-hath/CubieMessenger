.class Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NoticeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/notice/NoticeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field noticeIcon:Landroid/widget/ImageView;

.field noticeLayout:Landroid/widget/RelativeLayout;

.field noticeNoticeTime:Landroid/widget/TextView;

.field noticeTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/notice/NoticeListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/notice/NoticeListAdapter$1;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public initViewHolder(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 60
    const v0, 0x7f080256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeTextView:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f080257

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeNoticeTime:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f080253

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeLayout:Landroid/widget/RelativeLayout;

    .line 63
    const v0, 0x7f080254

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeIcon:Landroid/widget/ImageView;

    .line 64
    return-void
.end method
