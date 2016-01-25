.class Lcom/aviary/android/feather/widget/IAPDialog$4;
.super Ljava/lang/Object;
.source "IAPDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/IAPDialog;->handleHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/IAPDialog;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/IAPDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$4;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$4;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # invokes: Lcom/aviary/android/feather/widget/IAPDialog;->removeFromParent()V
    invoke-static {v0}, Lcom/aviary/android/feather/widget/IAPDialog;->access$1500(Lcom/aviary/android/feather/widget/IAPDialog;)V

    .line 723
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 718
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 715
    return-void
.end method
