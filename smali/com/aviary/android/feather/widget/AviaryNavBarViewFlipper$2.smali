.class Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$2;
.super Ljava/lang/Object;
.source "AviaryNavBarViewFlipper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$OnToolbarClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    invoke-virtual {v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->opened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$2;->this$0:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper;->mListener:Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$OnToolbarClickListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/AviaryNavBarViewFlipper$OnToolbarClickListener;->onDoneClick()V

    .line 95
    :cond_0
    return-void
.end method
