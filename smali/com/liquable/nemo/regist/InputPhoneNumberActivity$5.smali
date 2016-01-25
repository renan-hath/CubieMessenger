.class Lcom/liquable/nemo/regist/InputPhoneNumberActivity$5;
.super Ljava/lang/Object;
.source "InputPhoneNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 290
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$5;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$5;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    const-class v2, Lcom/liquable/nemo/regist/SelectRegionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$5;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 296
    return-void
.end method
