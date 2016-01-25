.class Lcom/aviary/android/feather/AviaryMainController$6;
.super Ljava/lang/Object;
.source "AviaryMainController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/AviaryMainController;->setCurrentState(Lcom/aviary/android/feather/AviaryMainController$STATE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/AviaryMainController;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/AviaryMainController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/AviaryMainController;

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/aviary/android/feather/AviaryMainController$6;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController$6;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    # getter for: Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;
    invoke-static {v0}, Lcom/aviary/android/feather/AviaryMainController;->access$400(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->getDrawingImageContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1024
    iget-object v0, p0, Lcom/aviary/android/feather/AviaryMainController$6;->this$0:Lcom/aviary/android/feather/AviaryMainController;

    # getter for: Lcom/aviary/android/feather/AviaryMainController;->mContext:Lcom/aviary/android/feather/AviaryMainController$FeatherContext;
    invoke-static {v0}, Lcom/aviary/android/feather/AviaryMainController;->access$400(Lcom/aviary/android/feather/AviaryMainController;)Lcom/aviary/android/feather/AviaryMainController$FeatherContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/AviaryMainController$FeatherContext;->deactivatePopupContainer()V

    .line 1025
    return-void
.end method
