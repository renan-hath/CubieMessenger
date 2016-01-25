.class Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10$1;
.super Ljava/lang/Object;
.source "InputPhoneNumberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;

    iget-object v0, v0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->imageview1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$500(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/widget/ImageView;

    move-result-object v0

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->ANIMATION_DRAWABLES:[I
    invoke-static {}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$700()[I

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;

    iget-object v2, v2, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # invokes: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->nextIndex()I
    invoke-static {v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$800(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;

    iget-object v0, v0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->imageview1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$500(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;

    iget-object v1, v1, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$10;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->fadeIn:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$1000(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 377
    return-void
.end method
