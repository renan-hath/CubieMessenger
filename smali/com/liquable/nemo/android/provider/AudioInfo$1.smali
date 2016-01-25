.class final Lcom/liquable/nemo/android/provider/AudioInfo$1;
.super Ljava/lang/Object;
.source "AudioInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/provider/AudioInfo;
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
        "Lcom/liquable/nemo/android/provider/AudioInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/liquable/nemo/android/provider/AudioInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    new-instance v0, Lcom/liquable/nemo/android/provider/AudioInfo;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/android/provider/AudioInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/android/provider/AudioInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/liquable/nemo/android/provider/AudioInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/liquable/nemo/android/provider/AudioInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 30
    new-array v0, p1, [Lcom/liquable/nemo/android/provider/AudioInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/android/provider/AudioInfo$1;->newArray(I)[Lcom/liquable/nemo/android/provider/AudioInfo;

    move-result-object v0

    return-object v0
.end method
