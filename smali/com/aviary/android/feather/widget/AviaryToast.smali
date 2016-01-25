.class public Lcom/aviary/android/feather/widget/AviaryToast;
.super Ljava/lang/Object;
.source "AviaryToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/AviaryToast$TN;,
        Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;
    }
.end annotation


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field private mLayoutListener:Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;

.field mNextView:Landroid/view/View;

.field final mTN:Lcom/aviary/android/feather/widget/AviaryToast$TN;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWindowManager:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "toast"

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast;->LOG_TAG:Ljava/lang/String;

    .line 31
    const/16 v0, 0x11

    iput v0, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mGravity:I

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mContext:Landroid/content/Context;

    .line 54
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mWindowManager:Landroid/view/WindowManager;

    .line 56
    new-instance v0, Lcom/aviary/android/feather/widget/AviaryToast$TN;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/widget/AviaryToast$TN;-><init>(Lcom/aviary/android/feather/widget/AviaryToast;)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mTN:Lcom/aviary/android/feather/widget/AviaryToast$TN;

    .line 57
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mTN:Lcom/aviary/android/feather/widget/AviaryToast$TN;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mWindowManager:Landroid/view/WindowManager;

    iput-object v1, v0, Lcom/aviary/android/feather/widget/AviaryToast$TN;->mWm:Landroid/view/WindowManager;

    .line 58
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mY:I

    .line 59
    iput v2, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mX:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/aviary/android/feather/widget/AviaryToast;)Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/aviary/android/feather/widget/AviaryToast;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mLayoutListener:Lcom/aviary/android/feather/widget/AviaryToast$LayoutListener;

    return-object v0
.end method

.method public static make(Landroid/content/Context;II)Lcom/aviary/android/feather/widget/AviaryToast;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I
    .param p2, "duration"    # I

    .prologue
    .line 94
    new-instance v1, Lcom/aviary/android/feather/widget/AviaryToast;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/widget/AviaryToast;-><init>(Landroid/content/Context;)V

    .line 95
    .local v1, "result":Lcom/aviary/android/feather/widget/AviaryToast;
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 96
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, "v":Landroid/view/View;
    iput-object v2, v1, Lcom/aviary/android/feather/widget/AviaryToast;->mNextView:Landroid/view/View;

    .line 98
    iput p2, v1, Lcom/aviary/android/feather/widget/AviaryToast;->mDuration:I

    .line 99
    return-object v1
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mTN:Lcom/aviary/android/feather/widget/AviaryToast$TN;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryToast$TN;->hide()V

    .line 81
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setView must be called first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast;->mTN:Lcom/aviary/android/feather/widget/AviaryToast$TN;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryToast$TN;->show()V

    .line 77
    return-void
.end method
