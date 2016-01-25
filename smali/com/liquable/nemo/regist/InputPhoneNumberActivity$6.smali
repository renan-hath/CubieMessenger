.class Lcom/liquable/nemo/regist/InputPhoneNumberActivity$6;
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
    .line 303
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$6;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$6;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # invokes: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->applyPincode()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$600(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V

    .line 307
    return-void
.end method
