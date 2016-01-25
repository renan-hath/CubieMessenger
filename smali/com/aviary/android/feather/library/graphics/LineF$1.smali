.class Lcom/aviary/android/feather/library/graphics/LineF$1;
.super Ljava/lang/Object;
.source "LineF.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/graphics/LineF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/aviary/android/feather/library/graphics/LineF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/aviary/android/feather/library/graphics/LineF;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 207
    new-instance v0, Lcom/aviary/android/feather/library/graphics/LineF;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/graphics/LineF;-><init>()V

    .line 208
    .local v0, "r":Lcom/aviary/android/feather/library/graphics/LineF;
    invoke-virtual {v0, p1}, Lcom/aviary/android/feather/library/graphics/LineF;->readFromParcel(Landroid/os/Parcel;)V

    .line 209
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/graphics/LineF$1;->createFromParcel(Landroid/os/Parcel;)Lcom/aviary/android/feather/library/graphics/LineF;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/aviary/android/feather/library/graphics/LineF;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 213
    new-array v0, p1, [Lcom/aviary/android/feather/library/graphics/LineF;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/graphics/LineF$1;->newArray(I)[Lcom/aviary/android/feather/library/graphics/LineF;

    move-result-object v0

    return-object v0
.end method
