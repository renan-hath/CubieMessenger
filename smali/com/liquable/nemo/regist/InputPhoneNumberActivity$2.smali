.class Lcom/liquable/nemo/regist/InputPhoneNumberActivity$2;
.super Ljava/lang/Object;
.source "InputPhoneNumberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 201
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->imageview1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$500(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$2;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->fadeOut:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$400(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 205
    return-void
.end method
