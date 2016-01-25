.class Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9$1;
.super Ljava/lang/Object;
.source "InputPhoneNumberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;

    iget-object v0, v0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->imageview1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$500(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;

    iget-object v1, v1, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$9;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->fadeOut:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$400(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 353
    return-void
.end method
