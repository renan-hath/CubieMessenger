.class public Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AviaryWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/AviaryWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1406
    new-instance v0, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState$1;

    invoke-direct {v0}, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState$1;-><init>()V

    sput-object v0, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1396
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1389
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;->currentScreen:I

    .line 1397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;->currentScreen:I

    .line 1398
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/aviary/android/feather/widget/AviaryWorkspace$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/aviary/android/feather/widget/AviaryWorkspace$1;

    .prologue
    .line 1387
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1392
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1389
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;->currentScreen:I

    .line 1393
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1402
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1403
    iget v0, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    return-void
.end method
