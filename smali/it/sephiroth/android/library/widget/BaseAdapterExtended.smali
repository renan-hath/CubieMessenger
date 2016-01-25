.class public abstract Lit/sephiroth/android/library/widget/BaseAdapterExtended;
.super Landroid/widget/BaseAdapter;
.source "BaseAdapterExtended.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final mDataSetObservableExtended:Lit/sephiroth/android/library/utils/DataSetObservableExtended;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    .local p0, "this":Lit/sephiroth/android/library/widget/BaseAdapterExtended;, "Lit/sephiroth/android/library/widget/BaseAdapterExtended<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 9
    new-instance v0, Lit/sephiroth/android/library/utils/DataSetObservableExtended;

    invoke-direct {v0}, Lit/sephiroth/android/library/utils/DataSetObservableExtended;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/BaseAdapterExtended;->mDataSetObservableExtended:Lit/sephiroth/android/library/utils/DataSetObservableExtended;

    .line 7
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lit/sephiroth/android/library/widget/BaseAdapterExtended;, "Lit/sephiroth/android/library/widget/BaseAdapterExtended<TT;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 26
    iget-object v0, p0, Lit/sephiroth/android/library/widget/BaseAdapterExtended;->mDataSetObservableExtended:Lit/sephiroth/android/library/utils/DataSetObservableExtended;

    invoke-virtual {v0}, Lit/sephiroth/android/library/utils/DataSetObservableExtended;->notifyChanged()V

    .line 27
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lit/sephiroth/android/library/widget/BaseAdapterExtended;, "Lit/sephiroth/android/library/widget/BaseAdapterExtended<TT;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 36
    iget-object v0, p0, Lit/sephiroth/android/library/widget/BaseAdapterExtended;->mDataSetObservableExtended:Lit/sephiroth/android/library/utils/DataSetObservableExtended;

    invoke-virtual {v0}, Lit/sephiroth/android/library/utils/DataSetObservableExtended;->notifyInvalidated()V

    .line 37
    return-void
.end method

.method public registerDataSetObserverExtended(Lit/sephiroth/android/library/utils/DataSetObserverExtended;)V
    .locals 1
    .param p1, "observer"    # Lit/sephiroth/android/library/utils/DataSetObserverExtended;

    .prologue
    .line 12
    .local p0, "this":Lit/sephiroth/android/library/widget/BaseAdapterExtended;, "Lit/sephiroth/android/library/widget/BaseAdapterExtended<TT;>;"
    iget-object v0, p0, Lit/sephiroth/android/library/widget/BaseAdapterExtended;->mDataSetObservableExtended:Lit/sephiroth/android/library/utils/DataSetObservableExtended;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/utils/DataSetObservableExtended;->registerObserver(Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method public unregisterDataSetObserverExtended(Lit/sephiroth/android/library/utils/DataSetObserverExtended;)V
    .locals 1
    .param p1, "observer"    # Lit/sephiroth/android/library/utils/DataSetObserverExtended;

    .prologue
    .line 16
    .local p0, "this":Lit/sephiroth/android/library/widget/BaseAdapterExtended;, "Lit/sephiroth/android/library/widget/BaseAdapterExtended<TT;>;"
    iget-object v0, p0, Lit/sephiroth/android/library/widget/BaseAdapterExtended;->mDataSetObservableExtended:Lit/sephiroth/android/library/utils/DataSetObservableExtended;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/utils/DataSetObservableExtended;->unregisterObserver(Ljava/lang/Object;)V

    .line 17
    return-void
.end method
