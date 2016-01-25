.class Lcom/liquable/nemo/phone/ConnectPhoneActivity$2;
.super Ljava/lang/Object;
.source "ConnectPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/phone/ConnectPhoneActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$2;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/regist/SelectRegionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$2;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 136
    return-void
.end method
