.class Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$1;
.super Ljava/lang/Object;
.source "ListViewWithSizeChangedListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener$1;->this$0:Lcom/liquable/nemo/widget/ListViewWithSizeChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 39
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->setIsChatGroupScrolledToBottom(Z)V

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 43
    return-void
.end method
