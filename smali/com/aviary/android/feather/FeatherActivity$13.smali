.class Lcom/aviary/android/feather/FeatherActivity$13;
.super Ljava/lang/Object;
.source "FeatherActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/FeatherActivity;->hideProgressLoader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/FeatherActivity;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$13;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$13;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mInlineProgressLoader:Landroid/view/View;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$500(Lcom/aviary/android/feather/FeatherActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1373
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1368
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1365
    return-void
.end method
