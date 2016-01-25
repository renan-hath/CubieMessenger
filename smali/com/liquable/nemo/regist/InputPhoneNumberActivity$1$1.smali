.class Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1$1;
.super Ljava/lang/Object;
.source "InputPhoneNumberActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;

    iget-object v0, v0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;

    iget-object v1, v1, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->val$inputPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;

    iget-object v2, v2, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->internationalCallingCode:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$200(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1$1;->this$1:Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;

    iget-object v3, v3, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$1;->val$nickname:Ljava/lang/String;

    # invokes: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->startInputPincodeActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$300(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method
