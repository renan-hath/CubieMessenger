.class Lcom/aviary/android/feather/widget/AviaryGallery$ScrollScrollSelectionNotifier;
.super Ljava/lang/Object;
.source "AviaryGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/AviaryGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollScrollSelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AviaryGallery;


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollScrollSelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryGallery;

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollScrollSelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollScrollSelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollScrollSelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->fireOnSelected()V

    goto :goto_0
.end method
