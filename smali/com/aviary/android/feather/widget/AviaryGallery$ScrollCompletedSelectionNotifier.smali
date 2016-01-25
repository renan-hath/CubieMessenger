.class Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;
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
    name = "ScrollCompletedSelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AviaryGallery;


# direct methods
.method private constructor <init>(Lcom/aviary/android/feather/widget/AviaryGallery;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aviary/android/feather/widget/AviaryGallery;Lcom/aviary/android/feather/widget/AviaryGallery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aviary/android/feather/widget/AviaryGallery;
    .param p2, "x1"    # Lcom/aviary/android/feather/widget/AviaryGallery$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;-><init>(Lcom/aviary/android/feather/widget/AviaryGallery;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryGallery;

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/AviaryGallery;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryGallery;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryGallery;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryGallery$ScrollCompletedSelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryGallery;

    # invokes: Lcom/aviary/android/feather/widget/AviaryGallery;->fireOnScrollCompleted()V
    invoke-static {v0}, Lcom/aviary/android/feather/widget/AviaryGallery;->access$000(Lcom/aviary/android/feather/widget/AviaryGallery;)V

    goto :goto_0
.end method
