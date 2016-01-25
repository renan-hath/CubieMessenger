.class Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AviaryAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/AviaryAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;


# direct methods
.method private constructor <init>(Lcom/aviary/android/feather/widget/AviaryAdapterView;)V
    .locals 0

    .prologue
    .line 412
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aviary/android/feather/widget/AviaryAdapterView;Lcom/aviary/android/feather/widget/AviaryAdapterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aviary/android/feather/widget/AviaryAdapterView;
    .param p2, "x1"    # Lcom/aviary/android/feather/widget/AviaryAdapterView$1;

    .prologue
    .line 412
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;-><init>(Lcom/aviary/android/feather/widget/AviaryAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 416
    .local p0, "this":Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;, "Lcom/aviary/android/feather/widget/AviaryAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    iget-boolean v0, v0, Lcom/aviary/android/feather/widget/AviaryAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-virtual {v0, p0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryAdapterView$SelectionNotifier;->this$0:Lcom/aviary/android/feather/widget/AviaryAdapterView;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryAdapterView;->fireOnSelected()V

    goto :goto_0
.end method
