.class Lcom/aviary/android/feather/library/services/drag/DragView$2;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/library/services/drag/DragView;->remove(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/library/services/drag/DragView;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/services/drag/DragView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/drag/DragView$2;->this$0:Lcom/aviary/android/feather/library/services/drag/DragView;

    iput-object p2, p0, Lcom/aviary/android/feather/library/services/drag/DragView$2;->val$view:Landroid/view/View;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView$2;->this$0:Lcom/aviary/android/feather/library/services/drag/DragView;

    # getter for: Lcom/aviary/android/feather/library/services/drag/DragView;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/aviary/android/feather/library/services/drag/DragView;->access$3(Lcom/aviary/android/feather/library/services/drag/DragView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView$2;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 223
    return-void
.end method
