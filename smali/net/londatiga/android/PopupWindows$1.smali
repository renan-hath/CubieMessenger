.class Lnet/londatiga/android/PopupWindows$1;
.super Ljava/lang/Object;
.source "PopupWindows.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/londatiga/android/PopupWindows;-><init>(Landroid/content/Context;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/londatiga/android/PopupWindows;

.field final synthetic val$consumeOutsideTouchableEvent:Z


# direct methods
.method constructor <init>(Lnet/londatiga/android/PopupWindows;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/londatiga/android/PopupWindows;

    .prologue
    .line 47
    iput-object p1, p0, Lnet/londatiga/android/PopupWindows$1;->this$0:Lnet/londatiga/android/PopupWindows;

    iput-boolean p2, p0, Lnet/londatiga/android/PopupWindows$1;->val$consumeOutsideTouchableEvent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lnet/londatiga/android/PopupWindows$1;->this$0:Lnet/londatiga/android/PopupWindows;

    iget-object v0, v0, Lnet/londatiga/android/PopupWindows;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 52
    iget-boolean v0, p0, Lnet/londatiga/android/PopupWindows$1;->val$consumeOutsideTouchableEvent:Z

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
