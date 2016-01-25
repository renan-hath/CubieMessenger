.class Lcom/aviary/android/feather/widget/AviaryToast$TN$1;
.super Ljava/lang/Object;
.source "AviaryToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/AviaryToast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/widget/AviaryToast$TN;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AviaryToast$TN;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aviary/android/feather/widget/AviaryToast$TN;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN$1;->this$1:Lcom/aviary/android/feather/widget/AviaryToast$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryToast$TN$1;->this$1:Lcom/aviary/android/feather/widget/AviaryToast$TN;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryToast$TN;->handleShow()V

    .line 109
    return-void
.end method
