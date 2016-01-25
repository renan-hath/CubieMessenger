.class Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;
.super Ljava/lang/Object;
.source "InputPhoneNumberActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->onNotLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->inputPhoneNumberBackgroundLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$900(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->ANIMATION_DRAWABLES:[I
    invoke-static {}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$700()[I

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # invokes: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->nextIndex()I
    invoke-static {v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$800(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 349
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9$1;-><init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 358
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->imageview1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$500(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    return-void
.end method
