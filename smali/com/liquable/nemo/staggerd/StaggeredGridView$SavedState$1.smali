.class final Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState$1;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 591
    new-instance v0, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcel;Lcom/liquable/nemo/staggerd/StaggeredGridView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 596
    new-array v0, p1, [Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState$1;->newArray(I)[Lcom/liquable/nemo/staggerd/StaggeredGridView$SavedState;

    move-result-object v0

    return-object v0
.end method
