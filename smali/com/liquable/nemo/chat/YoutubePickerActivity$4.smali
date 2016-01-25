.class Lcom/liquable/nemo/chat/YoutubePickerActivity$4;
.super Ljava/lang/Object;
.source "YoutubePickerActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$4;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

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
    .line 407
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$4;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->lists:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1400(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$4;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->mode:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    invoke-static {v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$1300(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;->run(Z)V

    .line 410
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 413
    return-void
.end method
