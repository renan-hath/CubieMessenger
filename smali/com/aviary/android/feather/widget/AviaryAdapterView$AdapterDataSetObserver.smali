.class Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AviaryAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/AviaryAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AviaryAdapterView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/AviaryAdapterView;

    .prologue
    .line 356
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 362
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mDataChanged:Z

    .line 363
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iget v1, v1, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mItemCount:I

    iput v1, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldItemCount:I

    .line 364
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-virtual {v1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mItemCount:I

    .line 368
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iget v0, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    # invokes: Lcom/aviary/android/feather/widget/AviaryAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->access$000(Lcom/aviary/android/feather/widget/AviaryAdapterView;Landroid/os/Parcelable;)V

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 374
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->checkFocus()V

    .line 375
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->requestLayout()V

    .line 376
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 380
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mDataChanged:Z

    .line 382
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    # invokes: Lcom/aviary/android/feather/widget/AviaryAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->access$100(Lcom/aviary/android/feather/widget/AviaryAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iget v1, v1, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mItemCount:I

    iput v1, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mOldItemCount:I

    .line 390
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iput v3, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mItemCount:I

    .line 391
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iput v2, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedPosition:I

    .line 392
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iput-wide v4, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mSelectedRowId:J

    .line 393
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iput v2, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedPosition:I

    .line 394
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iput-wide v4, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNextSelectedRowId:J

    .line 395
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iput-boolean v3, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mNeedSync:Z

    .line 397
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->checkFocus()V

    .line 398
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$AdapterDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->requestLayout()V

    .line 399
    return-void
.end method
